from datetime import datetime

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

