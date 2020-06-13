#!/bin/bash

# Author: Mikhail Tugushev <info@mihailtugushev.ru>
# VK API documentation <https://vk.com/dev/utils.getShortLink>

# On OSX, this will dump the contents of the clipboard; Replace HTML Ampersand with %26
longUrl=$(pbpaste | sed -e 's/\&/%26/g')

# Set VK Shortlink API
token=ccc39829ccc39829ccc3982961ccb320e1cccc3ccc3982992464282e11588d3cb690fgh # Service key access
version=5.21 # Version
private=0 # Public stat

# Create short url via VK API
shortUrl=$(curl --data "access_token=$token&v=$version&private=$private" "https://api.vk.com/method/utils.getShortLink?url=$longUrl" | /usr/local/bin/jq -r '.response.short_url')

# Copy short link in buffer exchange
printf "$shortUrl" | pbcopy
echo "$shortUrl"

# Send notification
echo display notification "\"$shortUrl"\" | osascript


