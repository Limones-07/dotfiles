#!/usr/bin/env sh

makoctl reload
# to test a 'high' urgency notification add '-u critical '
notify-send -a "Test critical" -u critical "Critical" "needed to <s>create</s> that script cuz /usr/bin/makoctl reload wasn't working and was preventing the notification to appear with no logs"
notify-send -a "Test normal" -u normal "Normal" "needed to <s>create</s> that script cuz /usr/bin/makoctl reload wasn't working and was preventing the notification to appear with no logs"
notify-send -a "Test low" -u low "Low" "needed to <s>create</s> that script cuz /usr/bin/makoctl reload wasn't working and was preventing the notification to appear with no logs"
