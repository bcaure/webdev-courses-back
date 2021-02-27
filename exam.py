from flask import jsonify, request, render_template
from random import randrange
from datetime import datetime
from flask_app import app
from init_db import get_db

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
]

COLUMNS_LIST = [
    ["Item", "Price_at_WinCo", "Price_at_WalMart"],
    ["Region", "Alcohol_Percentage", "Tobacco_Percentage"],
    ["City", "Cost_of_Living", "Rent"],
    ["City", "Living_Cost", "Restaurant_Prices"],
    ["City", "Cost_Of_Living", "Grocery_Prices"],
    ["Date", "LosAngeles_Prices", "SanDiego_Prices"],
    ["BarName", "Calories", "Sugar"],
    ["Season", "Revenue", "TicketPrice"],
    ["Item", "Weight", "MeatWeight"],
    ["name", "sodium", "fiber"]
]

def indexOfCode(code):
    return API_LIST.index(code)

def code(number):
    return API_LIST[number % len(API_LIST)]

def title(number):
    api_code = code(number)
    return api_code.replace('_', ' ').title()

@app.route('/exam/api/<api_code>')
def exam(api_code):
    columns = COLUMNS_LIST[indexOfCode(api_code)]
    cursor = get_db().cursor()
    cursor.execute(f'select * from {api_code}')
    rows = cursor.fetchall()
    result = []
    for row in rows:
        print(columns, row)
        result.append({
            columns[0]: row[0],
            columns[1]: row[1],
            columns[2]: row[2]
        })
    return jsonify(result)

@app.route('/exam/student/<student_number>')
def student(student_number):
    number = int(student_number)
    api_code = code(number)
    columns = COLUMNS_LIST[indexOfCode(api_code)]
    type = 'list' if number % 2 == 1 else 'table'
    calc = 'max' if number % 4 == 0 or number % 4 == 1 else 'mean'
    print(columns)
    return render_template('exam.html', title=title(number), type=type, code=api_code, columns=columns, calc=calc)




