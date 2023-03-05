# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except

###
### API
###

from datetime import datetime, timedelta
from flask import jsonify, request, render_template
import jwt
from flask_app import app
from init_db import get_db
from common import validate_payload, JWT_SECRET, token_required

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

@app.route('/games/exercise')
def get_games_exercise():
    return render_template('games.html')

@app.route('/games', methods=['GET'])
def get_games():
    cursor = get_db().cursor()
    cursor.execute("SELECT * FROM game")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "name": m[1], "summary": m[2], "releaseDate": m[3], "photo": m[4], "similarGames": m[5]}, rows))
    return jsonify(objects)

@app.route('/games/reviews', methods=['GET'])
def get_game_review():
    cursor = get_db().cursor()
    cursor.execute("SELECT * FROM game_review")
    rows = cursor.fetchall()
    objects = list(map(lambda m: {"id": m[0], "comment": m[1], "note": m[2], "userName": m[3], "gameId": m[4]}, rows))
    return jsonify(objects)

@app.route('/games/reviews', methods=['POST'])
@token_required
def post_game_review():
    validation_errors = validate_payload(request, ['comment', 'note', 'gameId', 'userName'])
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    review = request.get_json(force=True, silent=True)
    con = get_db()
    cur = con.cursor()
    cur.execute("INSERT INTO game_review(comment, note, game_review, user_name) VALUES (?, ?, ?, ?)", (review["comment"], review["note"], review["gameId"], review["userName"]))
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) INSERTED"

@app.route('/games/reviews/<review_id>', methods=['DELETE'])
@token_required
def delete_game_review(review_id):
    con = get_db()
    cur = con.cursor()
    cur.execute("DELETE FROM game_review WHERE id = ?", [review_id])
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) DELETED"

@app.route('/games/signup', methods=['POST'])
def game_signup():
    validation_errors = validate_payload(request, ['userName', 'password'])
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    signup_form = request.get_json(force=True, silent=True)
    if len(signup_form["password"]) < 6:
        return "password is too short: it must 6 chars at least", 400
    con = get_db()
    cursor = con.cursor()
    user_name = signup_form["userName"]
    cursor.execute("SELECT name FROM game_user WHERE name=?", (user_name,))
    existing_rows = cursor.fetchall()
    if len(existing_rows) > 0:
        return f"user {user_name} already exists", 400
    cur = con.cursor()
    cur.execute("INSERT INTO game_user(name, password) VALUES (?, ?)", (user_name, signup_form["password"]))
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) INSERTED"


@app.route('/games/signin', methods=['POST'])
def game_signin():
    validation_errors = validate_payload(request, ['userName', 'password'])
    if len(validation_errors) > 0:
        return "\n".join(validation_errors), 400
    signin_form = request.get_json(force=True, silent=True)
    con = get_db()
    cur = con.cursor()
    cur.execute("SELECT name FROM game_user WHERE name=? AND password=?", (signin_form["userName"], signin_form["password"]))
    rows = cur.fetchall()
    if len(rows) > 0:
        jwt_payload = {
            'userName' : rows[0][0],
            'exp' : datetime.utcnow() + timedelta(minutes=600)
        }
        token = jwt.encode(jwt_payload, JWT_SECRET, "HS256")
        return token
    else:
        return "invalid user or password", 401

@app.route('/games/user/<user_id>', methods=['DELETE'])
@token_required
def delete_game_user(user_id):
    con = get_db()
    cur = con.cursor()
    cur.execute("DELETE FROM game_user WHERE id = ?", [user_id])
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) DELETED"
