/* *******************************************
 *
 * views.agc
 *
 * Project: fBus
 *
 * *******************************************/
 
function splashScreen()

	myTimer			as timer_t
	transmitTimer	as timer_t
	
	myTimer = setTimer(2500)
	transmitTimer = setTimer(750)
	
	placeSplash()
	placeClockText(getClock(), 0)
	placeSplashTransmit()
	
	repeat
		if getTimer(transmitTimer)
			updateTransmit(sprite.skyssSplashTransmit)
		endif
		updateClockText(getClock())
		sync()
	until getTimer(myTimer)
	 
	clearSplash()
	
endFunction

function mainScreen()
	
	quit as integer = false
	transmitTimer as timer_t
	transmitTimer = setTimer(750)
	
	placeMain()
	placeClockText(getClock(), 0)
	placeMainTransmit()
	
	repeat
		if getTimer(transmitTimer)
			updateTransmit(sprite.skyssMaintransmit)
		endif
		updateClockText(getClock())
		sync()		
	until quit
		
endFunction
