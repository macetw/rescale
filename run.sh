#!/bin/sh -e


python3 -m venv rescale
source rescale/bin/activate
pip install -r requirements.txt
rm -fr database.db
sqlite3 database.db < database.sql
python portal.py &
python hardware.py
