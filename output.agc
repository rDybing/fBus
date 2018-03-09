/* *******************************************
 *
 * output.agc
 *
 * Project: msSignServe
 *
 * *******************************************/

// ************************************************ Splash Functions ***************************************************

function placeSplash()
	
	spr as spriteProp_t
	
	spr.posX = 0
	spr.posY = 0
	spr.width = device.width
	spr.height = device.height
	
	imageSetup(sprite.skyssSplash, layer.back, spr, media.skyssSplash)
	
endFunction

function clearSplash()
	
	clearSprites(sprite.skyssSplash, sprite.skyssSplash)
	clearSprites(sprite.skyssSplashTransmit, sprite.skyssSplashTransmit)
	
endFunction

function placeSplashTransmit()
	
	spr as spriteProp_t
	
	spr.posX = pos.transmitX
	spr.posY = pos.transmitY
	spr.width = GetImageWidth(media.skyssSplashTransmit0)
	spr.height = GetImageHeight(media.skyssSplashTransmit0)
	
	if GetSpriteExists(sprite.skyssSplashTransmit)
		deleteSprite(sprite.skyssSplashTransmit)
	endif
	
	CreateSprite(sprite.skyssSplashTransmit, media.skyssSplashTransmit0)
	AddSpriteAnimationFrame(sprite.skyssSplashTransmit, media.skyssSplashTransmit0)
	AddSpriteAnimationFrame(sprite.skyssSplashTransmit, media.skyssSplashTransmit1)
	AddSpriteAnimationFrame(sprite.skyssSplashTransmit, media.skyssSplashTransmit2)
	AddSpriteAnimationFrame(sprite.skyssSplashTransmit, media.skyssSplashTransmit3)
	SetSpritePosition(sprite.skyssSplashTransmit, spr.posX, spr.posY)
	SetSpriteColorAlpha(sprite.skyssSplashTransmit, 255)
	SetSpriteDepth(sprite.skyssSplashTransmit, layer.front)
	SetSpriteFrame(sprite.skyssSplashTransmit, 3)
	SetSpriteVisible(sprite.skyssSplashTransmit, 1)
	SetSpriteSize(sprite.skyssSplashTransmit, spr.width, spr.height)	
	
endFunction

// ************************************************ Main View Functions ************************************************

function placeMain()
	
	spr as spriteProp_t
	
	spr.posX = 0
	spr.posY = 0
	spr.width = device.width
	spr.height = device.height
	
	imageSetup(sprite.skyssMain, layer.A, spr, media.skyssMain)
	//SetSpriteColorAlpha(sprite.skyssMain, 64)
	
endFunction

function placeMainTransmit()
	
	spr as spriteProp_t
	
	spr.posX = pos.transmitX
	spr.posY = pos.transmitY
	spr.width = GetImageWidth(media.skyssMainTransmit0)
	spr.height = GetImageHeight(media.skyssMainTransmit0)
	
	if GetSpriteExists(sprite.skyssMainTransmit)
		deleteSprite(sprite.skyssMainTransmit)
	endif
	
	CreateSprite(sprite.skyssMainTransmit, media.skyssSplashTransmit0)
	AddSpriteAnimationFrame(sprite.skyssMainTransmit, media.skyssMainTransmit0)
	AddSpriteAnimationFrame(sprite.skyssMainTransmit, media.skyssMainTransmit1)
	AddSpriteAnimationFrame(sprite.skyssMainTransmit, media.skyssMainTransmit2)
	AddSpriteAnimationFrame(sprite.skyssMainTransmit, media.skyssMainTransmit3)
	SetSpritePosition(sprite.skyssMainTransmit, spr.posX, spr.posY)
	SetSpriteColorAlpha(sprite.skyssMainTransmit, 255)
	SetSpriteDepth(sprite.skyssMainTransmit, layer.front)
	SetSpriteFrame(sprite.skyssMainTransmit, 3)
	SetSpriteVisible(sprite.skyssMainTransmit, 1)
	SetSpriteSize(sprite.skyssMainTransmit, spr.width, spr.height)	
	
endFunction

function placeMainStripe()

	spr as spriteProp_t

	spr.posX = pos.stripeX
	spr.posY = pos.stripeY
	spr.width = GetImageWidth(media.skyssMainStripe)
	spr.height = GetImageHeight(media.skyssMainStripe)

	for i = 0 to sprite.skyssMainStripe.length
		deleteSprite(sprite.skyssMainStripe[i])
		createSprite(sprite.skyssMainStripe[i], media.skyssMainStripe)
		SetSpriteSize(sprite.skyssMainStripe[i], spr.width, spr.height)
		setSpritePosition(sprite.skyssMainStripe[i], spr.posX + (spr.width * i), spr.posY)
		SetSpriteDepth(sprite.skyssMainStripe[i], layer.B)
		SetSpriteVisible(sprite.skyssMainStripe[i], 1)
	next i
	
endFunction

function updateMainStripe(x as integer)

	w as integer
	w = GetImageWidth(media.skyssMainStripe)

	if x > w - 1
		x = 0
	endif

	for i = 0 to sprite.skyssMainStripe.length
		SetSpritePosition(sprite.skyssMainStripe[i], pos.stripeX + (w * i) - x, getSpriteY(sprite.skyssMainStripe[i]))
	next i

	inc x, 2

endFunction x

// ************************************************ Common Functions ***************************************************

function updateTransmit(spriteID)
	
	index as integer
	
	index = random(1, 4)
	
	SetSpriteFrame(spriteID, index)
	
endFunction

// ************************************************ Chores Functions ***************************************************

function imageSetup(sID as integer, depth as integer, spr as spriteProp_t, iID as integer)

	if GetSpriteExists(sID) = true
		DeleteSprite(sID)
	endif

	CreateSprite(sID, iID)
	SetSpritePosition(sID, spr.posX, spr.posY)
	SetSpriteColorAlpha(sID, 255)
	SetSpriteDepth(sID, depth)
	SetSpriteVisible(sID, 1)
	SetSpriteSize(sID, spr.width, spr.height)

endFunction

function clearSprites(start as integer, stop as integer)
	
	for i = start to stop 
		if GetSpriteExists(i)
			DeleteSprite(i)
		endif
	next i
	
endFunction
