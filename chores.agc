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
	
	timeStr = GetCurrentTime()
	
	out.hours = val(GetStringToken(timeStr, ":", 1))
	out.minutes = val(GetStringToken(timeStr, ":", 2))
	
endFunction out

function getDate()
	
	out as date_t
	dateStr as string
	
	dateStr = GetCurrentDate()
	
	out.day = val(getStringToken(dateStr, "-", 3))
	out.month = val(getStringToken(dateStr, "-", 2))
	
endFunction out
