use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additionsuse O : script "omnifocus"use OmniFocus : application "OmniFocus"on run	tell O to toggleColon(selectedItems())end runon handle_string(argv)	if argv is "set" then		O's setColon(selectedItems() of O)	else if argv is "clear" then		O's clearColon(selectedItems() of O)	end ifend handle_string