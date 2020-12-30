from flask import jsonify, request
from random import randrange
from datetime import datetime
from flask_app import app
from init_db import get_db

@app.route('/supermarket')
def supermarket():
    cursor = get_db().cursor()
    cursor.execute('select * from supermarket')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/tobacco_alcoohol_consumption')
def tobacco_alcoohol_consumption():
    cursor = get_db().cursor()
    cursor.execute('select * from tobacco_alcoohol_consumption')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/rent_price')
def rent_price():
    cursor = get_db().cursor()
    cursor.execute('select * from rent_price')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/restaurant_price')
def restaurant_price():
    cursor = get_db().cursor()
    cursor.execute('select * from restaurant_price')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/grocery_price')
def grocery_price():
    cursor = get_db().cursor()
    cursor.execute('select * from grocery_price')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/house_price')
def house_price():
    cursor = get_db().cursor()
    cursor.execute('select * from house_price')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/chocolate_bars')
def chocolate_bars():
    cursor = get_db().cursor()
    cursor.execute('select * from chocolate_bars')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/broadway_shows')
def broadway_shows():
    cursor = get_db().cursor()
    cursor.execute('select * from broadway_shows')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/burger_king')
def burger_king():
    cursor = get_db().cursor()
    cursor.execute('select * from burger_king')
    rows = cursor.fetchall()
    return jsonify(rows)

@app.route('/cereals')
def cereals():
    cursor = get_db().cursor()
    cursor.execute('select * from cereals')
    rows = cursor.fetchall()
    return jsonify(rows)


