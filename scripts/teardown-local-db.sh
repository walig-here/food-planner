#!/usr/bin/bash
set -e
set -a
source '.env.local'
set +a
rm -f ${LOCAL_DB_FILE}
