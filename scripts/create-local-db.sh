#!/usr/bin/bash
set -e
set -a
source '.env.local'
set +a
sqlite3 ${LOCAL_DB_FILE} < src/db/create-db.sql
