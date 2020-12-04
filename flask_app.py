from flask import Flask, jsonify
from werkzeug.middleware.proxy_fix import ProxyFix
from init_db import init_app, get_db
from utils import buildBrandModelCars

app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)
app.config.from_pyfile("config/settings.py")

init_app(app)

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
    cursor.execute("select * from car limit 10")
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/')
def brandsModelsCars():
    cursor = get_db().cursor()
    cursor.execute("""
        select brand.id, brand.name, model.id, model.name, car.id, car.name, car.power, car.real_weight, car.official_weight, car.options, car.start_date
        from car 
        inner join model on car.model_id = model.id 
        inner join brand on brand.id = model.brand_id 
        limit 10
    """)
    rows = cursor.fetchall()
    result = buildBrandModelCars(rows)
    return jsonify(result)
