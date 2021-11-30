# Quickstart

If you encountered error, remove any existing `venv` folder from the project root before starting.

## Windows
- py -3 -m venv venv
- venv\Scripts\activate
- pip install -r requirements.txt
- set FLASK_APP=flask_app.py
- flask init-db
- flask run

## Linux/Mac
- python3 -m venv venv
- . venv/bin/activate
- pip install -r requirements.txt
- export FLASK_APP=flask_app.py
- flask init-db
- flask run

## CPanel

From the [a2hosting article](https://www.a2hosting.com/kb/developer-corner/python/installing-and-configuring-flask-on-linux-shared-hosting)

### Installation
- cd <app_dir>
- source ~/virtualenv/webdev-api/3.8/bin/activate
- pip install -r requirements.txt
- export FLASK_APP=flask_app.py
- export LC_ALL=en_US.utf-8
- flask init-db

### Update DB
- cd <app_dir>
- source ~/virtualenv/webdev-api/3.8/bin/activate
- export FLASK_APP=flask_app.py
- export LC_ALL=en_US.utf-8
- flask init-db
