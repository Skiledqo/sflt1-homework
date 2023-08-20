#!/bin/bash

HOST="10.0.2.15"
PORT=8080
WEB_PATH="/var/www/html/index.nginx-debian.html"

# Check if the web server is accessible
nc -z -w 1 $HOST $PORT > /dev/null 2>&1
NC_STATUS=$?

# Check if the web page exists
if [[ -f $WEB_PATH ]]; then
    FILE_EXISTS=0
else
    FILE_EXISTS=1
fi

# Combine the results and exit with the appropriate status code
if [[ $NC_STATUS -eq 0 ]] && [[ $FILE_EXISTS -eq 0 ]]; then
    echo "Web server is accessible and index page exists"
    exit 0
else
    echo "Web server is not accessible or index page does not exist"
    exit 1
fi

