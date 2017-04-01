1.install AutoHotkey_1.1.25.01_setup.exe

2.using notepad, open the Pulse.ahk file

3.edit following variable as appropriate

	USERNAME := "----@mitrai.com"
	PASSWORD := "----"
	HOURS	 := "9"
	SUMMERY  := ""
	URL	 := "http://pulse.mitrai.net/public/index.php?path_info=projects%2F-----------%2Ftracking"
   URL should be the link to the "time and Expenses" tab under your project name in pulse

4.save it and close the file

5.double click on the Pulse.ahk

6.Ready to run..............!!!!!


-----------------------------------------------

**  Ctl + Shift + t
	This will open the IE, 
	login to pulse,
	Add a billable time record for today,
	logout and close

**  Ctl + Shift + ,
	This will open the IE,
	login to pulse,
	open the time record popup

**  Ctl + Shift + .
	The time record popup dialog have to be opened while we press this
	This will add time record and close the popup
	reopen the popup window

**  Ctl + Shift + /
	logout
 