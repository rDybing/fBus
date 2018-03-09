/* *******************************************
 *
 * constants.agc
 *
 * Project: msSignServe
 *
 * *******************************************/
 
 function constants()
/* *******************************************
 *
 * ID Map:
 *
 * 1000 -> 1089: UI text
 * 1090 -> 1099: Input text
 * 1100 -> 1199: Data text
 * 2000 -> 2099: Video
 * 8800 -> 8899: Sounds
 * 8900 -> 8999: Sprites
 * 9000 -> 9099: Media Files Import
 * 9100 -> 9199: Animation frames
 *
 * *******************************************/

	layer.front					= 0
	layer.A						= 10
	layer.B						= 20
	layer.C						= 30
	layer.D						= 40
	layer.back					= 999

	txt.ver						= 1000
	txt.clockH					= 1100
	txt.clockDot				= 1101
	txt.clockM					= 1102
	txt.dateD					= 1103
	txt.dateM					= 1104

	sprite.skyssSplash			= 8900
	sprite.skyssMain			= 8901
	sprite.skyssSplashTransmit	= 8910
	sprite.skyssMainTransmit	= 8911
	sprite.skyssMainStripeStart	= 8920
	// fonts	
	media.fontA					= 8000
	media.fontB					= 8001
	media.fontC					= 8002
	media.fontD					= 8003
	// images	
	media.skyssSplash			= 8900
	media.skyssMain				= 8901
	media.skyssSplashTransmit0	= 8910
	media.skyssSplashTransmit1	= 8911
	media.skyssSplashTransmit2	= 8912
	media.skyssSplashTransmit3	= 8913
	media.skyssMainTransmit0	= 8914
	media.skyssMainTransmit1	= 8915
	media.skyssMainTransmit2	= 8916
	media.skyssMainTransmit3	= 8917
	media.skyssMainStripe		= 8920

	sprite.skyssMainStripe.length = 4
	for i = 0 to sprite.skyssMainStripe.length
		sprite.skyssMainStripe[i] = sprite.skyssMainStripeStart + i
	next i 

endFunction

function initColor()

	// white
	color[0].r = 255
	color[0].g = 255
	color[0].b = 255
	color[0].a = 255
	// black
	color[1].r = 0
	color[1].g = 0
	color[1].b = 0
	color[1].a = 255
	// grey
	color[2].r = 160
	color[2].g = 160
	color[2].b = 160
	color[2].a = 255
	// orange
	color[3].r = 255
	color[3].g = 192
	color[3].b = 24
	color[3].a = 255
	// red
	color[4].r = 255
	color[4].g = 0
	color[4].b = 0
	color[4].a = 255
	// green
	color[5].r = 255
	color[5].g = 192
	color[5].b = 24
	color[5].a = 255
	// blue
	color[6].r = 255
	color[6].g = 192
	color[6].b = 24
	color[6].a = 255
	
endFunction

function initPositions()
	
	pos.clockX		= 634
	pos.clockY		= 7
	pos.dateX		= 344
	pos.dateY		= 256
	pos.transmitX	= 470
	pos.transmitY	= 0
	pos.stripeX		= 32
	pos.stripeY		= 468
	
endFunction

function initMonths()
	
	mnd as integer[11] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	
endFunction mnd

