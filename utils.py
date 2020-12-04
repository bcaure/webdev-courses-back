def tupleToDict(tuple):
    return {
        "id": tuple[0],
        "name": tuple[1],
        "model": {
            "id": tuple[2],
            "name": tuple[3],
            "cars": {
                "id": tuple[4],
                "name": tuple[5],
                "power": tuple[6],
                "real_weight": tuple[7],
                "official_weight": tuple[8],
                "options": tuple[9],
                "start_date": tuple[10]
            }
        }
    }


def buildBrandModelCars(tuples):
    result = list(map(tupleToDict, tuples))
    print("buildBrandModelCars", result)
    return result
