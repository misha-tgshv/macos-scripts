#!/bin/bash

# Author: Mikhail Tugushev <info@mihailtugushev.ru>
# Documentation <https://clck.ru/-->

# On OSX, this will dump the contents of the clipboard
longUrl=`pbpaste`

# Replace HTML Ampersand with %26
uncodeUrl=$(echo "$longUrl" | sed -e 's/\&/%26/g')

# Short long URL
shortUrl=$(curl -s https://clck.ru/--?url=$uncodeUrl)

# Copy short URL to clipboard
printf "$shortUrl" | pbcopy
echo "$shortUrl"

# Notification
echo display notification "\"$shortUrl"\" | osascript
