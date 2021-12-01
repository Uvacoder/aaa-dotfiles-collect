property threshold : 20 -- The level below which the script issues warnings
property verbose : false -- Report current battery level on every run
property file : "/tmp/battery.log" -- The path to the log file (from plist)


set eof of my file to 0

tell the battery()
    set warning_level to the warningLevel()
    if the warning_level = 1 then return check()
    warn about (warning_level - 1) * 5 with alert
end tell

# warn
#   Sends out a visible and audible warning with information about the
#   remaining charge (+level) on the battery.  Invoke without alert to have
#   the +level reported in the notification centre as a percentage.  Invoke 
#   with alert to have the +level reported in a pop-up alert dialog as an
#   estimation of the remaining battery time (in minutes), and which must be
#   dismissed by the user.
to warn about level without alert
    if not alert then display notification ["Current battery level: ", level, "%"] as text with title ["⚠️ Battery Warning"] sound name "Basso"

    say "Warning: battery low" using "Moira" pitch 127 speaking rate 180 without waiting until completion

    if alert then display alert ["Warning: battery level is very low"] message ["Estimated time remaining: " & level & " minutes"] as critical giving up after 0
end warn

# battery()
#   Contains a script object that defines a number of convenience handlers that
#   retrieve information about the on-board power source
on battery()
    script
        use framework "IOKit"
        use scripting additions
        property warninglevels : ["None", "Early", "Final"]

        on warningLevel() -- A ten-minute warning indicator
            IOPSGetBatteryWarningLevel() of the current application
        end warningLevel

        on info()
            IOPSCopyPowerSourcesInfo() of the current application as record
        end info

        to check()
            copy [it, |current capacity|, |is charging|] of info() to [ps_info, percentage, charging]

            if the percentage ≤ threshold and it is not charging then warn about percentage without alert

            if verbose then return display notification ["Percentage: ", percentage, linefeed, "Charging: ", charging] as text with title ["🔋 Battery Information"]

            ["Script last run on ", current date, linefeed, linefeed, __string(ps_info), linefeed] as text
        end check
    end script
end battery

# __string()
#   A that will return an AppleScript record as a formatted string, modified
#   specifically for use in this script, therefore may not port very well to
#   handle other records from other scripts
to __string(obj)
    if class of obj = text then return obj

    try
        set E to {_:obj} as text
    on error E
        my tid:{null, "Can’t make {_:", "} into type text.", "{", "}", "|"}
        set E to E's text items as text
        my tid:{linefeed, ", "}
        set E to E's text items as text
    end try
end __string

# tid:
#   Set the text item delimiters
on tid:(d as list)
    local d

    if d = {} or d = {0} then set d to ""
    set my text item delimiters to d
end tid: