/* *******************************************
 *
 * chores.agc
 *
 * Project: fBus
 *
 * *******************************************/
 
// ************************************************ Time Stuff *********************************************************

function setTimer(freq as integer)

	t as timer_t

	t.new = GetMilliseconds()
	t.old = t.new
	t.freq = freq

endFunction t

function getTimer(t ref as timer_t)
	
	out as integer = false
	
	t.new = GetMilliseconds()
	
	if t.new > t.old + t.freq
		t.old = t.new
		out = true
	endif
	
endFunction out

function getClock()

	out as clock_t
	timeStr as string
	timeH as string
	timeM as string
	
	timeStr = GetCurrentTime()
	
	timeH = GetStringToken(timeStr, ":", 1)
	timeM = GetStringToken(timeStr, ":", 2)
	
	out.hours = val(timeH)
	out.minutes = val(timeM)
	
endFunction out
