# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except, unused-import, wrong-import-position
import sys
from flask_cors import CORS
from flask import Flask
from werkzeug.middleware.proxy_fix import ProxyFix

print(sys.path)

from init_db import init_app
app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)

cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

app.config.from_pyfile("config/settings.py")

init_app(app)

import sportscars
import exam
import restaurant
import games_api
