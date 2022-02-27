from flask import jsonify, request, render_template
from random import randrange
from datetime import datetime
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
    except:
        return f'Field {columns[1]} is not a valid number: {payload_object[columns[1]]}', 400
    try:
        number2 = float(payload_object[columns[2]])
    except:
        return f'Field {columns[2]} is not a valid number: {payload_object[columns[2]]}', 400

    con = get_db()
    cur = con.cursor()
    cur.execute(f'SELECT * FROM {api_code} WHERE {columns[0]} = ?', [payload_object[columns[0]]])
    rows = cur.fetchall()
    if (len(rows) > 0):
        return f'Impossible to create a new record with identical field {columns[0]}: the value "{payload_object[columns[0]]}" already exists', 400

    cur.execute(f"INSERT INTO {api_code}({columns[0]}, {columns[1]}, {columns[2]}) VALUES (?, ?, ?)",
        (payload_object[columns[0]], number1, number2))
    result = cur.rowcount
    con.commit()
    return f'{result} ROW(S) INSERTED' 

@app.route('/exam/api/<api_code>', methods=['PUT'])
def exam_put(api_code):
    columns = COLUMNS_LIST[index_of_code(api_code)]
    validation_errors = validate_payload(request, columns)
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    payload_object = request.get_json(force=True, silent=True)
    try:
        number1 = float(payload_object[columns[1]])
    except:
        return f'Field {columns[1]} is not a valid number: {payload_object[columns[1]]}', 400
    try:
        number2 = float(payload_object[columns[2]])
    except:
        return f'Field {columns[2]} is not a valid number: {payload_object[columns[2]]}', 400

    con = get_db()
    cur = con.cursor()
    cur.execute(f'SELECT * FROM {api_code} WHERE {columns[0]} = ?', [payload_object[columns[0]]])
    rows = cur.fetchall()
    if (len(rows) == 0):
        return f'Impossible to update an existing record: no record was found with field {columns[0]}="{payload_object[columns[0]]}"', 400

    cur.execute(f"UPDATE {api_code} SET {columns[1]}=?, {columns[2]}=? WHERE {columns[0]} = ?",
        (number1, number2, payload_object[columns[0]]))
    result = cur.rowcount
    con.commit()
    return f'{result} ROW(S) UPDATED'

@app.route('/exam/student/<student_number>')
def student(student_number):
    number = int(student_number)
    api_code = code(number)
    columns = COLUMNS_LIST[index_of_code(api_code)]
    question1 = 'list' if number % 2 == 1 else 'table'
    question2 = 'max' if number % 4 == 0 or number % 4 == 1 else 'mean'
    question3 = 'insert' if number % 8 == 0 or number % 8 == 1 or number % 8 == 2  or number % 8 == 3 else 'update'
    return render_template('exam.html', title=title(number), code=api_code, columns=columns, question1=question1, question2=question2, question3=question3)



