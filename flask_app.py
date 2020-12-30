from flask import Flask
from werkzeug.middleware.proxy_fix import ProxyFix

import sys
print(sys.path)

from flask_cors import CORS
from init_db import init_app

app = Flask(__name__)
app.wsgi_app = ProxyFix(app.wsgi_app)

cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

app.config.from_pyfile("config/settings.py")

init_app(app)

import sportscars
import exam
