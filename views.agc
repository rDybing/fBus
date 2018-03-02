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
	
	myTimer = setTimer(250000)
	transmitTimer = setTimer(750)
	
	placeSplash()
	placeClockText(getClock(), 0)
	placeSplashTransmit()
	
	repeat
		if getTimer(transmitTimer)
			updateSplashTransmit()
		endif
		updateClockText(getClock())
		sync()
	until getTimer(myTimer)
	 
	clearSplash()
	
endFunction
