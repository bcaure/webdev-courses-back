# pylint: disable = missing-module-docstring, missing-function-docstring, line-too-long, bare-except
import json

###
### Scripts to init data
###

def string_or_null(game, field):
    value = game.get(field, "NULL")
    if value == "NULL":
        return value
    else:
        value = value.replace("'", "''")
        return f"'{value}'"

def extract_cover_id():
    """query /cover igdb api with body: fields alpha_channel,animated,checksum,game,height,image_id,url,width; where id = (...)"""
    json_file = open("games.json", "r", encoding="UTF8")
    json_content = json.load(json_file)
    json_file.close()
    txt_file = open("games_cover_ids.txt", "w", encoding="UTF8")
    txt_file.write("(")
    for game in json_content:
        cover_id = game.get("cover")
        if cover_id:
            txt_file.write(f"{cover_id},")
    txt_file.write(")")
    txt_file.close()

def merge_cover_urls_to_game():
    cover_file = open("games_cover_urls.json", "r", encoding="UTF8")
    cover_urls = json.load(cover_file)
    cover_file.close()
    games_file = open("games.json", "r", encoding="UTF8")
    games_content = json.load(games_file)
    games_file.close()
    for game in games_content:
        cover_id = game.get("cover", "yyy")
        if cover_id:
            for cover_obj in cover_urls:
                cover_id = cover_obj["id"]
                if cover_id == cover_id:
                    cover_url = cover_obj["url"]
                    if not cover_url.startswith("http"):
                        cover_url = f"https:{cover_url}"
                    game["cover"] = cover_url
                    break
    json_result = json.dumps(games_content, sort_keys=True, indent=2, separators=(',', ': '))
    result_file = open("games_with_urls.json", "w", encoding="UTF8")
    result_file.write(json_result)
    result_file.close()

def to_games_sql():
    json_file = open("games_with_urls.json", "r", encoding="UTF8")
    json_content = json.load(json_file)
    json_file.close()
    sql_file = open("games.sql", "w", encoding="UTF8")
    sql_file.write("DROP TABLE IF EXISTS games;\n")
    sql_file.write("""CREATE TABLE game (
        id INTEGER PRIMARY KEY,
        name TEXT,
        summary TEXT,
        first_release_date INTEGER,
        cover TEXT,
        similar_games TEXT
    );
    \n\n""")
    sql_file.write("DROP TABLE IF EXISTS games;\n")
    sql_file.write("""CREATE TABLE game_review (
        id INTEGER PRIMARY KEY,
        comment TEXT,
        note INTEGER,
        game_review INTEGER
    );
    \n\n""")

    for game in json_content:
        similar_games = game.get("similar_games", [])
        if len(similar_games) == 0:
            similar_games = "NULL"
        else:
            similar_games = ",".join(map(str, similar_games))
            similar_games = f"'{similar_games}'"
        name = string_or_null(game, "name")
        summary = string_or_null(game, "summary")
        cover = string_or_null(game, "cover")
        sql_file.write(
            "INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) \n")
        sql_file.write(
            f"values({game.get('id', 'NULL')}, {cover}, {game.get('first_release_date', 'NULL')},")
        sql_file.write(f"{name}, {summary}, {similar_games}); \n\n")

    sql_file.close()

# 1)
#extract_cover_id()
# 2)
#merge_cover_urls_to_game()
# 3)
to_games_sql()
