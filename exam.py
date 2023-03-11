# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except
from flask import jsonify, request, render_template
from flask_app import app
from init_db import get_db
from common import validate_payload

API_LIST = [
  "supermarket",
  "tobacco_alcoohol_consumption",
  "rent_price",
  "restaurant_price",
  "grocery_price",
  "house_price",
  "chocolate_bars",
  "broadway_shows",
  "burger_king",
  "cereals",
  "offres_emploi",
  "population_departement"
]

COLUMNS_LIST = [
    ["Item", "Price_at_WinCo", "Price_at_WalMart"],
    ["Region", "Alcohol_Percentage", "Tobacco_Percentage"],
    ["City", "Cost_of_Living", "Rent"],
    ["City", "Living_Cost", "Restaurant_Prices"],
    ["City", "Cost_Of_Living", "Grocery_Prices"],
    ["Date", "LosAngeles_Prices", "SanDiego_Prices"],
    ["BarName", "Calories", "Sugar"],
    ["Season", "Revenue", "Ticket_Price"],
    ["Item", "Weight", "Meat_Weight"],
    ["Cereal", "Sodium", "Fiber"],
    ["Mois", "CDI", "Autres_Contrats"],
    ["Departement", "Hommes", "Femmes"]
]

def index_of_code(code):
    return API_LIST.index(code)

def code(number):
    return API_LIST[number % len(API_LIST)]

def title(number):
    api_code = code(number)
    return api_code.replace('_', ' ').title()

@app.route('/exam/api/<api_code>', methods=['GET'])
def exam_get(api_code):
    columns = COLUMNS_LIST[index_of_code(api_code)]
    cursor = get_db().cursor()
    cursor.execute(f'select * from {api_code}')
    rows = cursor.fetchall()
    result = []
    for row in rows:
        result.append({
            columns[0]: row[0],
            columns[1]: row[1],
            columns[2]: row[2]
        })
    return jsonify(result)

@app.route('/exam/api/<api_code>', methods=['POST'])
def exam_post(api_code):
    columns = COLUMNS_LIST[index_of_code(api_code)]
    validation_errors = validate_payload(request, columns)
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    payload_object = request.get_json(force=True, silent=True)
    try:
        number1 = float(payload_object[columns[1]])
    except ValueError:
        return jsonify({ "message": f'Field {columns[1]} is not a valid number: {payload_object[columns[1]]}'}), 400
    try:
        number2 = float(payload_object[columns[2]])
    except ValueError:
        return jsonify({ "message": f'Field {columns[2]} is not a valid number: {payload_object[columns[2]]}'}), 400

    con = get_db()
    cur = con.cursor()
    cur.execute(f'SELECT * FROM {api_code} WHERE {columns[0]} = ?', [payload_object[columns[0]]])
    rows = cur.fetchall()
    if len(rows) > 0:
        return jsonify({ "message": f'Impossible to create a new record with identical field {columns[0]}: the value "{payload_object[columns[0]]}" already exists'}), 400

    cur.execute(f"INSERT INTO {api_code}({columns[0]}, {columns[1]}, {columns[2]}) VALUES (?, ?, ?)",
        (payload_object[columns[0]], number1, number2))
    result = cur.rowcount
    con.commit()
    return jsonify({ "message": f'{result} ROW(S) INSERTED'})

@app.route('/exam/api/<api_code>', methods=['PUT'])
def exam_put(api_code):
    columns = COLUMNS_LIST[index_of_code(api_code)]
    validation_errors = validate_payload(request, columns)
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    payload_object = request.get_json(force=True, silent=True)
    try:
        number1 = float(payload_object[columns[1]])
    except ValueError:
        error_msg = {
            "message": f'Field {columns[1]} is not a valid number: {payload_object[columns[1]]}'
        }
        return jsonify(error_msg), 400
    try:
        number2 = float(payload_object[columns[2]])
    except ValueError:
        error_msg = {
            "message": f'Field {columns[2]} is not a valid number: {payload_object[columns[2]]}'
        }
        return jsonify(error_msg), 400

    con = get_db()
    cur = con.cursor()
    cur.execute(f'SELECT * FROM {api_code} WHERE {columns[0]} = ?', [payload_object[columns[0]]])
    rows = cur.fetchall()
    if len(rows) == 0:
        error_field = f'{columns[0]}="{payload_object[columns[0]]}"'
        error_msg = {
            "message": f'Impossible to update: no record found with field {error_field}'
        }
        return jsonify(error_msg), 400

    cur.execute(f"UPDATE {api_code} SET {columns[1]}=?, {columns[2]}=? WHERE {columns[0]} = ?",
        (number1, number2, payload_object[columns[0]]))
    result = cur.rowcount
    con.commit()
    return jsonify({ "message": f'{result} ROW(S) UPDATED'})

@app.route('/exam/student/<student_number>')
def student(student_number):
    number = int(student_number)
    api_code = code(number)
    columns = COLUMNS_LIST[index_of_code(api_code)]
    questions = [
        ["table", "mean", "insert"],
        ["table", "mean", "update"],
        ["table", "max", "insert"],
        ["table", "max", "update"],
        ["list", "mean", "insert"],
        ["list", "mean", "update"],
        ["list", "max", "insert"],
        ["list", "max", "update"],
    ]
    idx = number % 8
    questions = questions[idx]
    return render_template('exam.html', title=title(number), code=api_code, columns=columns, question1=questions[0], question2=questions[1], question3=questions[2])
