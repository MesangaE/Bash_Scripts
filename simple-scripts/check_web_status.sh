#!/bin/bash
#define a function to check the website

check_website() {
    local url= "$1"
    local responses= $(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$response" == "200" ]; then
        echo "website $url is up and running!"
    else
       echo "website $url is down!"
    fi
}
#call the function with a sample website
check_website "http://www.example.com"

# curl sends an http request
# -s flag makes the curl operate in silent mode, surppressing progress and error messages
# -o /dev/null discards the response body
# -w "${http_code}" instructs curl to point only the HTTP response code. response code determines wether the website is up or down
 