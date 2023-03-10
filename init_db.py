# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except
import sqlite3

import click
from flask import current_app, g
from flask.cli import with_appcontext


def get_db():
    if 'db' not in g:
        g.db = sqlite3.connect(
            current_app.config['DATABASE'],
            detect_types=sqlite3.PARSE_DECLTYPES
        )

    return g.db

def close_db(_e):
    database = g.pop('db', None)

    if database is not None:
        database.close()


@click.command('init-db')
@with_appcontext
def init_db_command():
    """Clear the existing data and create new tables."""
    database = get_db()
    # with current_app.open_resource('sportscars.sql') as file:
    #     database.executescript(file.read().decode('utf8'))

    # with current_app.open_resource('exam.sql') as file:
    #     database.executescript(file.read().decode('utf8'))

    # with current_app.open_resource('restaurant.sql') as file:
    #     database.executescript(file.read().decode('utf8'))

    with current_app.open_resource('games.sql') as file:
        database.executescript(file.read().decode('utf8'))
    click.echo('Initialized the database.')

def init_app(app):
    app.teardown_appcontext(close_db)
    app.cli.add_command(init_db_command)
