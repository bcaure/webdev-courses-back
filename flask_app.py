from flask import Flask, jsonify, request
from werkzeug.middleware.proxy_fix import ProxyFix
from random import randrange

import sys
print(sys.path)

from flask_cors import CORS
from init_db import init_app, get_db
from utils import buildBrandModelCars



app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)

cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

app.config.from_pyfile("config/settings.py")

init_app(app)

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
