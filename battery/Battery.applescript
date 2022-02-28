set batteryPercent to word 6 of paragraph 2 of (do shell script "pmset -g batt")

if batteryPercent > 10 and batteryPercent < 20 then
	
	display alert "low battery " & batteryPercent & "% before shut down."
	
else if batteryPercent � 10 then
	
	repeat 3 times
		
		beep
		
	end repeat
	
	display alert "low battery " & batteryPercent & "% before shut down."
	
	delay 120
	
end if

