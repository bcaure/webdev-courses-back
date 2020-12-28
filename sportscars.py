from flask import jsonify, request
from random import randrange
from datetime import datetime
from flask_app import app
from init_db import get_db

LIMIT_NUMBER = 15
LIMIT_SQL_CLAUSE = " limit %s" % (LIMIT_NUMBER)

@app.route('/brands')
def brands():
    cursor = get_db().cursor()
    cursor.execute("select * from brand")
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/models')
def models():
    cursor = get_db().cursor()
    cursor.execute("select * from model")
    rows = cursor.fetchall()
    return jsonify(rows)


@app.route('/cars')
def cars():
    cursor = get_db().cursor()
    cursor.execute("select * from car" + LIMIT_SQL_CLAUSE)
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/')
def brandsModelsCars():

    query = """
                select brand.id, brand.name, model.id, model.name, car.id, car.name, car.power, car.weight, car.year, car.image_url
                from car 
                inner join model on car.model_id = model.id 
                inner join brand on brand.id = model.brand_id 
            """
    args = []

    search = request.args.get('search')
    order = request.args.get('sort')

    if search is None and order is None:

        # No url query param: let's randomize the cars we fetch
        countCursor = get_db().cursor()
        countCursor.execute("select count(*) from car")
        count = countCursor.fetchone()[0]

        args = list(range(LIMIT_NUMBER))
        for i in range(0, LIMIT_NUMBER):
            args[i] = randrange(1, count, 1)
            if i == 0:
                query = query + "where car.id = ? "   
            else:
                query = query + "or car.id = ? "
    else:

        # url query param for search and/or order
        if  search is not None:

            search = "%" + search.upper() + "%"
            query = query + " where upper(brand.name) like ? or upper(model.name) like ? or upper(car.name) like ?"
            args = [search] * 3
        
        if order == "power" or order == "ratio" or order == "weight":

            if order == "ratio":
                order = "weight / car.power asc"
            elif order == "power":
                order = "power desc"
            elif order == "weight":
                order = "weight asc"
            query = query + " order by car." + order


    query = query + LIMIT_SQL_CLAUSE

    cursor = get_db().cursor()
    cursor.execute(query, args)
    rows = cursor.fetchall()
    result = buildBrandModelCars(rows)
    return jsonify(result)



def brands(tuples):
    brandTuples = map(lambda oneTuple: (oneTuple[0], oneTuple[1]), tuples)
    uniqueBrands = set(brandTuples)
    return list(map(lambda b: {"id": b[0], "name": b[1]}, uniqueBrands))

def models(tuples):
    modelTuples = map(lambda oneTuple: (oneTuple[2], oneTuple[3], oneTuple[0]), tuples)
    uniqueModels = set(modelTuples)
    return list(map(lambda m: {"id": m[0], "name": m[1], "brandId": m[2]}, uniqueModels))

def tupleToCar(tuple):

    return {
        "id": tuple[4],
        "name": tuple[5],
        "power": tuple[6],
        "weight": tuple[7],
        "year": tuple[8],
        "imageUrl": tuple[9]
    }


def buildBrandModelCars(tuples):
    modelObjects = models(tuples)
    for modelObject in modelObjects:
        modelCars = filter(lambda car: car[2] == modelObject["id"], tuples)
        modelObject["cars"] = list(map(tupleToCar, modelCars))
    
    brandObjects = brands(tuples)
    for brandObject in brandObjects:
        brandObject["models"] = list(filter(lambda modelObject: modelObject["brandId"] == brandObject["id"], modelObjects))

    return brandObjects

# ex = [
#     (0, "FORD", 0, "FOCUS", 0, "ST 225", "", "", "", "", datetime.strptime("Thu, 02 Jan 2015 00:00:00 GMT", "%a, %d %b %Y %H:%M:%S %Z")),
#     (0, "FORD", 0, "FOCUS", 1, "ST 250", "", "", "", "", ""),
#     (0, "FORD", 1, "FIESTA", 2, "ST 182", "", "", "", "", ""),
#     (0, "FORD", 1, "FIESTA", 3, "ST 200", "", "", "", "", ""),
#     (1, "BAC", 2, "MONO", 4, "", "", "", "", "", ""),
#     (2, "GM", 3, "X", 5, "Y", "", "", "", "", ""),
#     (2, "GM", 4, "A", 6, "B", "", "", "", "", ""),
# ]

# print(buildBrandModelCars(ex))

