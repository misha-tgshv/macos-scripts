# Author: Misha Tugushev <misha@tgshv.ru>


set myURL to ""

# Getting current URL on the browser
set nameOfActiveApp to (path to frontmost application as text)
if "Safari" is in nameOfActiveApp then
	tell application "Safari"
		set theURL to the URL of the current tab of the front window
	end tell
else if "Chrome" is in nameOfActiveApp then
	tell application "Google Chrome"
		set theURL to the URL of the active tab of the front window
	end tell
else if "Yandex" is in nameOfActiveApp then
	tell application "Yandex"
		set theURL to the URL of the active tab of the front window
	end tell
end if

# Extract domain name from url
set theURL to do shell script "echo '" & theURL & "' | sed -e 's|^.*://||' | sed -e 's|/.*$||'| sed -e 's|:.*$||' | sed -e 's|^.*@||'" & "| pbcopy; pbpaste"

# Clear domain to mailbox
set the clipboard to theURL & "@domain.ru" as string


# https://github.com/nugget/alfred-mailinabox-workflow/blob/ca03d6fa8f662d0560b95ab2d2f6054bc10d2743/get_url.scpt
