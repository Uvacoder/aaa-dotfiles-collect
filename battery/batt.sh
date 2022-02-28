#!/bin/sh

# to make execurable
# chmod +x batt.sh



function current_batt() {
  pmset -g batt | egrep -o "\\d+%" | tr % ' '
}

while [ $(current_batt) -gt 31 ]
do
  sleep 2
done

osascript -e 'display dialog "Low battery" with title "Alert"'

