; Vaccinator binds
#InstallKeybdHook
$q::
	send {q down}
	sleep 30
	send {q up}
	random,sleeptime,54,69
	sleep %sleeptime%
	send {Home down}
	sleep 30
	send {Home up}
	sleep %sleeptime%
return
$e::
	send {e down}
	sleep 30
	send {e up}
	random,sleeptime,54,69
	sleep %sleeptime%
	send {Home down}
	sleep 30
	send {Home up}
	sleep %sleeptime%
return
$r::
	send {r down}
	sleep 30
	send {r up}
	random,sleeptime,54,69
	sleep %sleeptime%
	send {Home down}
	sleep 30
	send {Home up}
	sleep %sleeptime%
return
; Uber counter
; based on http://www.teamfortress.tv/15049/uber-counting#9
UberCounterFunc(Key) {
	sleep 200
	global StopUberCounter := false
	Loop, 5
	{
		;sleep 9000
		; Instead we wait for 9sec * 5 times = 45 sec (approximate uber build time)
		; NumPad7 to be pressed again and re-iterate the whole thing
		KeyWait, %Key%, D T9
		; If NumPad7 was pressed then we break the loop
		if (ErrorLevel = false) or (StopUberCounter = true) { 
			break
		} else {
			send {NumPad4 down}
			sleep 30
			send {NumPad4 up}
		}
	}
}
$NumPad7::
	;UberCounterFunc("NumPad7")	
return
$NumpadHome::
	;UberCounterFunc("NumpadHome")	
return

StopUberCounterFunc() {
	global StopUberCounter := true
}
$NumpadEnd::
StopUberCounterFunc()
return
$NumPad1::
StopUberCounterFunc()
return
