use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
use O : script "omnifocus"

on main(argv)
	set sel to selectedItems() of O
	
	repeat with _sel in sel
		tell application "OmniFocus"
			if name of containing project of _sel is "Vision" then
				set note of _sel to name of _sel & " (Archiving " & date string of (current date) & ")" & "\n" & note of _sel
				set name of _sel to argv
			else
				display notification "No vision tasks selected."
			end if
		end tell
	end repeat
end main

on run (argv)
	main(argv)
end run

on handle_string(argv)
	main(argv)
end handle_string