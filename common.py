# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except
from functools import wraps
from sys import exc_info
import jwt
from flask import request
from init_db import get_db

#
# Common functions
#

def validate_payload(the_request, expected_attributes):
    payload = the_request.get_json(force=True, silent=True)
    validation_errors = []
    if payload is None:
        validation_errors.append("You sent an invalid JSON object")
    else:
        for expected_attribute in expected_attributes:
            if expected_attribute not in payload:
                validation_errors.append(f"You forgot to provide the '{expected_attribute}' attribute.")
        for received_attribute in payload:
            if received_attribute not in expected_attributes:
                validation_errors.append(f"You provided the '{received_attribute}' attribute, which is not expected.")
    return validation_errors

JWT_SECRET = 'EAZRTRDQS924278ZFSF9043'
def token_required(func):
    @wraps(func)
    def decorator(*args, **kwargs):
        if 'x-access-token' in request.headers:
            token = request.headers['x-access-token']
            data = None
            try:
                data = jwt.decode(token, JWT_SECRET, algorithms=["HS256"])
            except:
                return f"'x-access-tokens' is invalid: impossible to decode: {exc_info()[0]} ", 401

            user_name = data["userName"]
            cursor = get_db().cursor()
            cursor.execute("SELECT name FROM game_user WHERE name=?", (user_name, ))
            rows = cursor.fetchall()
            if len(rows) > 0:
                return func(user_name, *args, **kwargs)
            else:
                return '"x-access-tokens" is invalid: unknown user', 401

        else:
            return 'a valid "x-access-tokens" header is missing', 401

    return decorator
