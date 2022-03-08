set batteryPercent to word 6 of paragraph 2 of (do shell script "pmset -g batt")
set batteryPower to word 4 of paragraph 1 of (do shell script "pmset -g batt")

if batteryPower = "Battery" then
	if batteryPercent > 10 and batteryPercent < 21 then

		display alert "low battery " & batteryPercent & "%."

	else if batteryPercent < 11 then

		repeat 3 times

			beep

		end repeat

		display alert "low battery " & batteryPercent & "% before shut down."

		delay 120

	end if
end if
