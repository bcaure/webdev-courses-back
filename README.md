# Quickstart

## Windows
- py -3 -m venv venv
- venv\Scripts\activate
- pip install Flask
- set FLASK_APP=flask_app.py
- flask init-db
- flask run

## Linux/Mac
- python3 -m venv venv
- . venv/bin/activate
- pip install Flask
- export FLASK_APP=flask_app.py
- flask init-db
- flask run

## CPanel

From the [a2hosting article](https://www.a2hosting.com/kb/developer-corner/python/installing-and-configuring-flask-on-linux-shared-hosting)

### Init DB
- source ~/virtualenv/flaskapp/3.5/<python_version>/activate
- cd <app_dir>
- pip install Flask
- export FLASK_APP=flask_app.py
- export LC_ALL=en_US.utf-8
- flask init-db

### Update DB
- source ~/virtualenv/flaskapp/3.5/<python_version>/activate
- cd <app_dir>
- export FLASK_APP=flask_app.py
- export LC_ALL=en_US.utf-8
- flask init-db
