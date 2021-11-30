from flask import jsonify, request
from random import randrange
from datetime import datetime
from flask_app import app
from init_db import get_db

LIMIT_NUMBER = 15
LIMIT_SQL_CLAUSE = " limit %s" % (LIMIT_NUMBER)

@app.route('/food', methods=['GET'])
def food():
    cursor = get_db().cursor()
    cursor.execute("SELECT * FROM food")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "menuId": m[1], "title": m[2], "description": m[3], "category": m[4], "price": m[5], "photo": m[6]}, rows))
    return jsonify(objects)

@app.route('/menu', methods=['GET'])
def menu():
    cursor = get_db().cursor()
    cursor.execute("SELECT * FROM menu")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "title": m[1], "price": m[2]}, rows))
    return jsonify(objects)


@app.route('/order', methods=['GET'])
def get_orders():
    cursor = get_db().cursor()
    cursor.execute("SELECT * FROM client_order")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "client": m[1], "description": m[2], "price": m[3], "date": m[4]}, rows))
    return jsonify(objects)


@app.route('/order', methods=['POST'])
def post_orders():
    order = request.get_json(force=True, silent=True)
    if  order == None:
        return "You sent an invalid JSON object", 400
    if "id" not in order:
        return "You forgot to provide the 'id' attribute", 400
    con = get_db()
    cur = con.cursor()
    cur.execute("SELECT * FROM client_order WHERE id = ?", [order["id"]])
    rows = cur.fetchall()
    if (len(rows) > 0):
        return "Impossible to create the order with the id '%s': this id already exists" % order["id"], 400

    cur.execute("INSERT INTO client_order(id, client, descr, price, date) VALUES (?, ?, ?, ?, ?)",
        (order["id"], order["client"], order["description"], order["price"], order["date"]))
    result = cur.rowcount
    con.commit()
    return "%s ROW(S) INSERTED" % result 

@app.route('/order/<id>', methods=['DELETE'])
def delete_orders(id):
    con = get_db()
    cur = con.cursor()
    cur.execute("DELETE FROM client_order WHERE id = ?", [id])
    result = cur.rowcount
    con.commit()
    return "%s ROW(S) DELETED" % result 