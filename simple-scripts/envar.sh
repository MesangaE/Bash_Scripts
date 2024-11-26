#!/bin/bash
#define environmental variables
export DATABASE_URL="mysql://username:password@localhost/database"
#use environmental variables in your script
echo "Database URL: $DATABASE_URL"
