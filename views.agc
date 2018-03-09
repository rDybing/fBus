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
	
	quit			as integer = false
	xPos			as integer = 0
	dayMonths		as integer[]
	transmitTimer	as timer_t
	transmitTimer	= setTimer(750)
	dayMonths		= initMonths()
	
	placeMain()
	placeClockText(getClock(), 0)
	placeDateText(getDate(), 21, dayMonths, 1)
	placeMainTransmit()
	placeMainStripe()
	
	repeat
		if getTimer(transmitTimer)
			updateTransmit(sprite.skyssMaintransmit)
		endif
		xPos = updateMainStripe(xPos)
		updateClockText(getClock())
		sync()		
	until quit
		
endFunction
