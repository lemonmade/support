(*
	SUPPORT.SCPT
	Developed by Chris Sauve of [pxldot](http://pxldot.com).
	See README for details.
*)

property folderDelim : "@support"
property firstRun : true
property defaultToFirstProject : true
property debug : false

if firstRun and not debug then
	try
		set folderDelim to item 1 of (choose from list {"@support", "@reference", "@folder"} with prompt "Which syntax would you like to denote reference folders in the project notes?")
		set firstRun to false
	on error
		return
	end try
end if

tell application "OmniFocus"
	tell front document window of default document
		try
			set theSelection to value of selected trees of content
			if length of theSelection is 0 then set theSelection to value of selected trees of sidebar
			if ((count of theSelection) is 0) then
				display alert "Please select at least one project or task."
				return
			end if
			set theProjects to {}
			repeat with theItem in theSelection
				if (class of theSelection is project) and (not my inList(theItem, theProjects)) then
					set the end of theProjects to theItem
				else if not my inList(containing project of theItem, theProjects) then
					set the end of theProjects to (containing project of theItem)
				end if
			end repeat
		on error
			display alert "Please select at least one project or task."
			return
		end try
		
		if (length of theProjects > 1) and (not defaultToFirstProject) then
			set projectNames to my getNames(theProjects)
			set selectedProjectNames to (choose from list projectNames with prompt "Which project(s) would you like to open/ create a project folder for?" with multiple selections allowed)
			if selectedProjectNames is false then return
			if length of selectedProjectNames is 0 then
				return
			end if
			set selectedProjects to my assessList(selectedProjectNames, projectNames, theProjects)
		else
			set selectedProjects to item 1 of theProjects
		end if
		
		set thePaths to {}
		repeat with theProject in selectedProjects
			if (note of theProject contains folderDelim) then
				set the end of thePaths to my identifyFolder(note of theProject)
			else
				try
					set chosenFolder to (choose folder with prompt "Select the folder that contains the reference material for the project " & quote & (name of theProject) & quote & ".") as string
					set chosenFolder to my removeHomeFolder(chosenFolder)
				on error
					return
				end try
				if the note of theProject is "" then
					set the note of theProject to (folderDelim & " " & chosenFolder)
				else
					set the note of theProject to (the note of theProject & return & folderDelim & " " & chosenFolder)
				end if
				return
			end if
		end repeat
		
		
		tell application id "com.apple.finder"
			repeat with aFolder in thePaths
				open folder aFolder
			end repeat
			activate
		end tell
		
	end tell
end tell

on removeHomeFolder(chosenFolder)
	set text item delimiters to (path to home folder as text)
	set chosenFolder to every text item of chosenFolder
	set text item delimiters to ""
	return chosenFolder as string
end removeHomeFolder

on inList(theItem, theList)
	if length of theList is 0 then return false
	repeat with anItem in theList
		if id of anItem is id of theItem then return true
	end repeat
	return false
end inList

on getNames(theList)
	tell application "OmniFocus"
		tell default document
			set theReturn to {}
			repeat with theItem in theList
				set the end of theReturn to name of theItem
			end repeat
			return theReturn
		end tell
	end tell
end getNames

on assessList(theSelection, theList, theOriginals)
	set theReturn to {}
	repeat with j from 1 to (length of theSelection)
		repeat with i from 1 to (length of theList)
			if (item j of theSelection) is (item i of theList) then
				set the end of theReturn to item i of theOriginals
				exit repeat
			end if
		end repeat
	end repeat
	return theReturn
end assessList

on identifyFolder(theNote)
	set paras to every paragraph of theNote
	repeat with para in paras
		if para starts with folderDelim then
			set theText to para
			exit repeat
		end if
	end repeat
	set text item delimiters to {folderDelim & " ", folderDelim}
	set theText to every text item of theText
	set text item delimiters to ""
	set theText to (path to home folder as text) & (theText as text)
end identifyFolder