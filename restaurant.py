#pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except
from datetime import datetime
from flask import jsonify, request
from flask_app import app
from init_db import get_db
from common import validate_payload

def datetime_valid(dt_str):
    try:
        datetime.fromisoformat(dt_str)
    except:
        try:
            datetime.fromisoformat(dt_str.replace('Z', '+00:00'))
        except:
            return False
        return True
    return True

LIMIT_NUMBER = 15
LIMIT_SQL_CLAUSE = f" limit {LIMIT_NUMBER}"

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
    cursor.execute("SELECT id, client, descr, price, datetime(date) date  FROM client_order")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "client": m[1], "description": m[2], "price": m[3], "date": m[4]}, rows))
    return jsonify(objects)


@app.route('/order', methods=['POST'])
def post_orders():
    validation_errors = validate_payload(request, ['id', 'date', 'description', 'price', 'client'])
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    order = request.get_json(force=True, silent=True)
    if not datetime_valid(order["date"]):
        return "You sent an unexpected date format. Expected format is ISO string like '2016-12-13T21:20:37.593194+00:00Z'", 400
    con = get_db()
    cur = con.cursor()
    cur.execute("SELECT * FROM client_order WHERE id = ?", [order["id"]])
    rows = cur.fetchall()
    if len(rows) > 0:
        order_id = order["id"]
        return f"Impossible to create the order with the id '{order_id}': this id already exists", 400

    cur.execute("INSERT INTO client_order(id, client, descr, price, date) VALUES (?, ?, ?, ?, ?)",
        (order["id"], order["client"], order["description"], order["price"], order["date"]))
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) INSERTED"

@app.route('/order/<order_id>', methods=['DELETE'])
def delete_orders(order_id):
    con = get_db()
    cur = con.cursor()
    cur.execute("DELETE FROM client_order WHERE id = ?", [order_id])
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) DELETED"
