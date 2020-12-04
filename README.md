# Quickstart

## Windows
py -3 -m venv venv
venv\Scripts\activate
pip install Flask
set FLASK_APP=flask_app.py
flask init-db
flask run

## Linux/Mac
python3 -m venv venv
. venv/bin/activate
pip install Flask
export FLASK_APP=flask_app.py
flask init-db
flask run
