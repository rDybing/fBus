/* *******************************************
 *
 * fBus
 *
 * CC-BY Roy Dybing 2018
 *
 * slack:  rdybing
 * github: rDybing
 *
 * *******************************************/

#include "views.agc"
#include "output.agc"
#include "input.agc"
#include "text.agc"
#include "fileIO.agc"
#include "chores.agc"
#include "structs.agc"
#include "constants.agc"

#constant false		= 0
#constant true		= 1
#constant nil		= -1
#constant spaceKey	= 32
#constant escapeKey	= 27

global media		as media_t				// constant IDs
global font			as font_t				// constant IDs
global layer		as layer_t				// constant layer values
global sprite		as sprite_t				// constant IDs
global txt			as txt_t				// constant IDs
global color		as color_t[6]			// constant after init
global device 		as device_t				// constant after init
global pos			as position_t			// constant after init

deviceX				as integer				// constant after init
deviceY				as integer				// constant after init
fDeviceX			as float				// constant after init
fDeviceY			as float				// constant after init

SetRandomSeed(GetUnixTime())

device.os = GetDeviceBaseName()
device.model = GetDeviceType()

SetAntialiasMode(1)
// hard set to my HTC A9s resolution
device.width = 720
device.height = 1280

// convert to float and get aspect
fDeviceX = device.width
fDeviceY = device.height
device.aspect = fDeviceX / fDeviceY

constants()
initColor()
initPositions()
importMedia()

SetErrorMode(2)
SetWindowTitle("fBus")
SetWindowSize(device.width, device.height, 0)
SetVirtualResolution(device.width, device.height)
SetWindowAllowResize(1)
SetDisplayAspect(device.aspect)
SetScissor(0,0,0,0)
SetOrientationAllowed(1, 1, 0, 0)
SetSyncRate(30, 0)
UseNewDefaultFonts(1)
SetPrintSize(20.0)
SetPrintColor(255, 255, 255)

main()

function main()
	
	splashScreen()

	do

		print("Hello")
		sync()

	loop

endFunction
