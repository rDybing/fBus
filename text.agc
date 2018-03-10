/* *******************************************
 *
 * text.agc
 *
 * Project: fBus
 *
 * *******************************************/
 
// ************************************************ Placement **********************************************************

function placeClockText(c as clock_t, colID as integer)
	
	mt as txtProp_t
	clockH as string 
	clockM as string 
		
	setFontProperties(color[colID].r, color[colID].g, color[colID].b, media.fontC, 36.5)	
	mt = setTextProperties(pos.clockX, pos.clockY, 0)
	
	if c.hours < 10
		clockH = "0" + str(c.hours)
	else
		clockH = str(c.hours)
	endif
	
	if c.minutes < 10
		clockM = "0" + str(c.minutes)
	else
		clockM = str(c.minutes)
	endif
	
	clearText(txt.clockH, txt.clockM)
	
	createText(txt.clockH, clockH)
	createText(txt.clockDot, ".")
	createText(txt.clockM, clockM)
	textDraw(txt.clockH, mt)
	mt.startX = pos.clockX + 31
	textDraw(txt.clockDot, mt)
	mt.startX = pos.clockX + 38
	textDraw(txt.clockM, mt)
	
endFunction

function updateClockText(c as clock_t)
	
	clockH as string 
	clockM as string 
	
	if c.hours < 10
		clockH = "0" + str(c.hours)
	else
		clockH = str(c.hours)
	endif
	
	if c.minutes < 10
		clockM = "0" + str(c.minutes)
	else
		clockM = str(c.minutes)
	endif
	
	SetTextString(txt.clockH, clockH)
	SetTextString(txt.clockM, clockM)
	
endFunction

function placeDateText(date as date_t, days as integer, daysMonth as integer[], colID as integer)
	
	mt as txtProp_t
	dateD as string 
	dateM as string
	
	setFontProperties(color[colID].r, color[colID].g, color[colID].b, media.fontD, 60)	
	mt = setTextProperties(pos.dateX, pos.dateY, 0)
	
	clearText(txt.dateD, txt.dateM)

	if date.day + days > daysMonth[date.month - 1]
		date.day = (date.day + days) - daysMonth[date.month - 1]
		inc date.month
	else
		date.day = date.day + days
	endif
	
	dateD = str(date.day)
	dateM = str(date.month)
	
	if date.day < 10
		dateD = "0" + dateD
	endif
	
	if date.month < 10
		dateM = "0" + dateM
	endif
	
	createText(txt.dateD, dateD)
	createText(txt.dateM, dateM)
	textDraw(txt.dateD, mt)
	mt.startX = pos.dateX + 55
	textDraw(txt.dateM, mt)
	
endFunction

// ************************************************ Chores *************************************************************

function textDraw(id as integer, mt as txtProp_t)

	SetTextFont(id, font.id)
	SetTextColor(id, font.r, font.g, font.b, 255)
	SetTextSize(id, font.size)
	SetTextPosition(id, mt.startX, mt.startY)
	SetTextAlignment(id, mt.align)
	SetTextDepth(id, layer.front)
	SetTextVisible(id, 1)

endFunction

function setFontProperties(r as integer, g as integer, b as integer, fnt as integer, size as float)
	
	font.r = r
	font.g = g
	font.b = b
	font.id = fnt
	font.size = size

endFunction

function clearText(start as integer, stop as integer)

	for i = start to stop
		if getTextExists(i)
			deleteText(i)
		endif
	next i

endFunction

function setTextProperties(x as float, y as float, align as integer)
	
	mt as txtProp_t
	
	mt.startX = x
	mt.startY = y
	mt.align = align	
	
endFunction mt
