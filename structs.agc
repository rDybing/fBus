/* *******************************************
 *
 * structs.agc
 *
 * Project: fBus
 *
 * *******************************************/

type font_t
	id						as integer
	r						as integer
	g						as integer
	b						as integer
	size					as float
	interval				as integer
endType

type media_t			
	fontA					as integer
	fontB					as integer
	fontC					as integer
	fontD					as integer
	skyssSplash				as integer
	skyssMain				as integer
	skyssSplashTransmit0	as integer
	skyssSplashTransmit1	as integer
	skyssSplashTransmit2	as integer
	skyssSplashTransmit3	as integer
	skyssMainTransmit0		as integer
	skyssMainTransmit1		as integer
	skyssMainTransmit2		as integer
	skyssMainTransmit3		as integer
	skyssMainStripe			as integer
endType

type sprite_t		
	back					as integer
	waiting					as integer
	skyssSplash				as integer
	skyssMain				as integer
	skyssSplashTransmit 	as integer
	skyssMainTransmit		as integer
	skyssMainStripeStart	as integer
	skyssMainStripe			as integer[]
endType

type layer_t
	front					as integer
	A						as integer
	B						as integer
	C						as integer
	D						as integer
	back					as integer
endType

type mouse_t		
	x						as integer
	y						as integer
	hit						as integer
	spriteID 				as integer
endType

type txt_t		
	ver						as integer
	clockH					as integer
	clockDot				as integer
	clockM					as integer
	dateD					as integer
	dateM					as integer
endType

type txtProp_t			
	startY					as float
	startX					as float
	offsetX					as float
	offsetY					as float
	offset 					as integer
	align 					as integer
	size					as float
endType

type spriteProp_t		
	posX					as float
	posY					as float
	width					as float
	height					as float
endType

type device_t		
	width					as integer
	height					as integer
	aspect					as float
	os						as string
	model					as string 
endType

type color_t		
	r						as integer
	g						as integer
	b						as integer
	a						as integer
endType

type position_t		
	clockX					as integer
	clockY					as integer
	dateX					as integer
	dateY					as integer
	transmitX				as integer
	transmitY				as integer
	stripeX					as integer
	stripeY					as integer
endType

type timer_t		
	old						as integer
	new						as integer
	freq					as integer
endType

type clock_t		
	hours					as integer
	minutes					as integer
endType

type date_t
	day						as integer
	month					as integer
endType
