#!/bin/bash

echo "Welcome to the automated SQL Injection tester."

#url = The target URL
read -p "Enter the target URL: " url

#uri = The target URI
read -p "Enter the target URI: " uri

#payload = The payload of your choice
read -p "Enter the payload of your choice: " payload

#keyword = The target keyword
read -p "Enter the target keyword: " keyword

echo -----Target: 
echo $url$uri$payload

if curl -s "$url$uri$payload" | grep "$keyword"

then
        #If the keyword is in the content
        echo "SQL Injection successful"
else
        echo "There was an error in the SQL Injection"
fi

