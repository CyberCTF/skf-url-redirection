#!/bin/sh
# /redirect sends the browser to its newurl parameter.
set -e
H=http://web:5000
curl -sS -D - -o /dev/null "$H/redirect?newurl=/newsite" | grep -qi "^location: .*/newsite"
