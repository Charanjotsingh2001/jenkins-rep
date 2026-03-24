#!/bin/bash

echo "Running Query..."

QUERY_FILE="queries/query.sql"

HOST="your-db-host"
USER="your-db-user"
PASSWORD="your-db-password"
DB_NAME="your-db-name"

mysql -h $HOST -u $USER -p$PASSWORD -D $DB_NAME < $QUERY_FILE > output.txt

echo "Done"
