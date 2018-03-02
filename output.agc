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

function updateSplashTransmit()
	
	index as integer
	
	index = random(1, 4)
	
	SetSpriteFrame(sprite.skyssSplashTransmit, index)
	
endFunction

// ************************************************ Main View Functions ************************************************

// ************************************************ Chores Functions ***************************************************

function backSetup(sID as integer, depth as integer, spr as spriteProp_t, iID as integer)

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

function spriteSetup(sID as integer, depth as integer, spr as spriteProp_t, iID0 as integer, iID1 as integer)
	
	if GetSpriteExists(sID) = true
		DeleteSprite(sID)
	endif

	CreateSprite(sID, iID0)
	AddSpriteAnimationFrame(sID, iID0)
	AddSpriteAnimationFrame(sID, iID1)
	SetSpritePosition(sID, spr.posX, spr.posY)
	SetSpriteColorAlpha(sID, 255)
	SetSpriteDepth(sID, depth)
	SetSpriteFrame(sID, 1)
	SetSpriteVisible(sID, 1)
	SetSpriteSize(sID, spr.width, -1)

endFunction

function spriteFromDot(sID as integer, depth as integer, spr as spriteProp_t, image as integer, col as color_t)
	
	if GetSpriteExists(sID) = true
		DeleteSprite(sID)
	endif

	createSprite(sID, image)
	setSpritePosition(sID, spr.posX, spr.posY)
	setSpriteColor(sID, col.r, col.g, col.b, col.a)
	setSpriteDepth(sID, depth)
	setSpriteVisible(sID, 1)
	setSpriteSize(sID, spr.width, spr.height)
	
endFunction

function clearSprites(start as integer, stop as integer)
	
	for i = start to stop 
		if GetSpriteExists(i)
			DeleteSprite(i)
		endif
	next i
	
endFunction

function highlightSprite(sprID as integer, col as color_t)
	
	SetSpriteColor(sprID, col.r, col.g, col.b, col.a)
	
endFunction

function swapSprites(start as integer, stop as integer, in as integer)
	
	for i = start to stop
		if i <> in
			SetSpriteFrame(i, 1)
		else
			SetSpriteFrame(i, 2)
		endif
	next i
				
endFunction
