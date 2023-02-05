# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except

###
### API
###

from datetime import datetime
from flask import jsonify, request, render_template
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
def delete_game_review(review_id):
    con = get_db()
    cur = con.cursor()
    cur.execute("DELETE FROM game_review WHERE id = ?", [review_id])
    result = cur.rowcount
    con.commit()
    return f"{result} ROW(S) DELETED"
