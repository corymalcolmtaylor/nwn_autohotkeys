SetNumLockState, AlwaysOn

LoopCount := 0

NumpadDiv::
MouseMove, 960, 50, 0
return

Numpad0:: 
MouseMove, 960, 575, 0 ; put mouse on cente on screen
return
 

NumpadMult::
; MouseMove, 960, 450, 0
return

; *** BEDGIN SHIFT NUMPADS
SlowMouseSpeed := 50
MoveSleep := 100 ; amount of time to sleep between slow mouse moves

NumpadIns:: 
MouseMove, 960, 575, 0 ; center pointer on PC and right click
Click, right
return

NumpadClear::
LoopCount := 10000 ; used to exit loops for slow mouse movement
return

NumpadEnd::
while LoopCount < 150 {
MouseMove, -1, 1, SlowMouseSpeed , R;
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadDown::
while LoopCount < 200 {
MouseMove, 0, 1, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
Sleep, MoveSleep 
return

NumpadPgDn::
while LoopCount < 150 {
MouseMove, 1, 1, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadLeft::
while LoopCount < 200 {
MouseMove, -1, 0, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadRight::
while LoopCount < 200 {
MouseMove, 1, 0, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadHome::
while LoopCount < 150 {
MouseMove, -1, -1, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadUp::
while LoopCount < 200 {
MouseMove, 0, -1, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

NumpadPgUp::
while LoopCount < 150 {
MouseMove, 1, -1, SlowMouseSpeed , R
	LoopCount := LoopCount +1
Sleep, MoveSleep 
}
LoopCount := 0
return

; ***  END SHIFT NUMPADS


;   *** Begin normal numpads
FastMouseSpeed := 1
 
LongMouseSteps := 18 ;  does not seem to work for me in the mousemove calls

Numpad1::
While GetKeyState("Numpad1","P")
	MouseMove, -18, 18, FastMouseSpeed, R
return
 
Numpad2::
while GetKeyState("Numpad2","P")
	MouseMove, 0, 18, FastMouseSpeed, R		
return

Numpad3::
While GetKeyState("Numpad3","P")
	MouseMove, 18, 18, FastMouseSpeed, R			
return

Numpad4::
While GetKeyState("Numpad4","P")
	MouseMove, -18, 0, FastMouseSpeed, R	
return

Numpad5:: ;if the mouse is moving then stop it, else left-click
if(LoopCount != 0){
	LoopCount := 100000
}else{
	Click
}
return
 
Numpad6::
While GetKeyState("Numpad6","P")
	MouseMove, 18, 0, FastMouseSpeed, R
return

Numpad7::
While GetKeyState("Numpad7","P")
	MouseMove, -18, -18, FastMouseSpeed, R
return

Numpad8::
While GetKeyState("Numpad8","P")
	MouseMove, 0, -18, FastMouseSpeed, R
return

Numpad9::
While GetKeyState("Numpad9","P")
	MouseMove, 18, -18, FastMouseSpeed, R
return
; *** END normal numpads

; *** Begin Control numpads  
; For radial menus - move mouse as with normal numpads
; but then click and return

	*^Numpad1::
MouseMove,   -150,  150,  0,   R
Click
MouseMove,    150, -150,  0,   R
return
 
*^Numpad2::
MouseMove,   0,  200,  0,   R
Click
MouseMove,   0, -200,  0,   R
return

*^Numpad3::
MouseMove,   150,  150,  0,   R
Click
MouseMove,  -150, -150,  0,   R
return

*^Numpad4::
MouseMove,   -200, 0,  0,   R
Click
MouseMove,    200, 0,  0,   R
return

*^Numpad5::
Click, right
return

*^Numpad6::
MouseMove, 200, 0,  0,   R
Click
MouseMove, -200, 0,  0,   R
return

*^Numpad7::
MouseMove,   -150, -150,  0,   R
Click
MouseMove,    150,  150,  0,   R
return

*^Numpad8::
MouseMove,   0, -200,  0,   R
Click
MouseMove,   0,  200,  0,   R
return

*^Numpad9::
MouseMove,   150, -150,  0,   R
Click
MouseMove,  -150,  150,  0,   R
return
; *** End control numpads

; *** begin ALt numpads
; used for camera controls
AltSleepTime := 50

*!Numpad2::
loop 20
{
	Send  {Down down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep, AltSleepTime  
}
Send {Down up} 
return

*!Numpad3::
loop 20
{
	Send  {PgDn down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep, AltSleepTime  
}
Send {PgDn up} 
return
 
*!Numpad4::
loop 20
{
	Send  {Left down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep AltSleepTime  ; The number of milliseconds between keystrokes (or use SetKeyDelay).
}
Send {Left up} 
return

*!Numpad6::
loop 20
{
	Send  {Right down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep AltSleepTime  ; The number of milliseconds between keystrokes (or use SetKeyDelay).
}
Send {Right up}  
return

!Numpad8::
loop 20
{
	Send  {Up down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep AltSleepTime  ; The number of milliseconds between keystrokes (or use SetKeyDelay).
}
Send {Up up} 
return

!Numpad9::
loop 20
{
	Send  {PgUp down}  ; Auto-repeat consists of consecutive down-events (with no up-events).
	Sleep AltSleepTime  ; The number of milliseconds between keystrokes (or use SetKeyDelay).
}
Send {PgUp up} 
return
; end ALT numpads

;  end of file
 