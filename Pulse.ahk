	USERNAME := "--"
	PASSWORD := "--"
	HOURS	 := "9"
	SUMMERY  := ""
	URL		 := "http://pulse.---------------.net/public/index.php?path_info=projects%2F--------------%2Ftracking"
	PageLoad := 6000

	
;;Enter time for today
^+t::
	Pwb				:= ComObjCreate( "InternetExplorer.Application" )													; Creates the ComObj
	Pwb.Navigate(URL)																									; Navigates to Pulse
	Pwb.Visible 		:= True																							; Shows the IE app

	While ( Pwb.Busy || Pwb.ReadyState != 4 )																			; Waits for the webpage to finish loading
		Sleep 1000																										;	|

	send +{CLICK 485,425}
	send %USERNAME%
	send {TAB}
	send %PASSWORD%	
	send {ENTER}
	Sleep %PageLoad%
	
	;;open popup dialog
	send +{CLICK 500,132}
	Sleep 1000
	send +{CLICK 220,160}
	send %HOURS%
	send +{CLICK 220,220}
	send %SUMMERY%
	
	
	send {TAB 2}
	send {DOWN}							;set Billable
	Sleep 1000
	
	send +{CLICK 220,370}				;Click log time
	Sleep 2000
	
	
	;send +{CLICK 650,100}				;close dialog box
	
	;	
	;Logout code block
	;
	send +{CLICK 50,600}
	send +{CLICK 260,550}	
	Sleep 60
	send {ENTER}
	Sleep 60
	Pwb.quit()
	
Return


;;Login to the calander view
^+,::
	Pwb				:= ComObjCreate( "InternetExplorer.Application" )													; Creates the ComObj
	Pwb.Navigate(URL)																									; Navigates to Pulse
	Pwb.Visible 		:= True																							; Shows the IE app

	While ( Pwb.Busy || Pwb.ReadyState != 4 )																			; Waits for the webpage to finish loading
		Sleep 1000																										;	|

	send +{CLICK 485,425}
	send %USERNAME%
	send {TAB}
	send %PASSWORD%	
	send {ENTER}
	Sleep %PageLoad%
	
	;;open popup dialog
	send +{CLICK 500,132}
	Sleep 1000
	send +{CLICK 220,160}
	send %HOURS%
	send +{CLICK 220,220}
	send %SUMMERY%
	send {TAB}
	
	
Return

;;Logout from the application
^+/::
	send +{CLICK 50,600}
	send +{CLICK 260,550}	
	Sleep 60
	send {ENTER}
	Sleep 60
	Pwb.quit()
	
Return


;;log time and close the popup
;;reopen the popup
^+.::
	send +{CLICK 220,370}				;Click log time
	Sleep 2000
	
	;;open popup dialog
	send +{CLICK 500,132}
	Sleep 1000
	send +{CLICK 220,160}
	send %HOURS%
	send +{CLICK 220,220}
	send %SUMMERY%
	
	
	send {TAB}
Return















