// Written by Adam Mehaney and Jonah Rodrigo
// Measured by Brenen Gjesdal

function SetSpriteLookDirection(Sprite1 as integer, Sprite2 as integer)
	Angle as float
	AngleX as float
	AngleY as float
	
	SpriteX = GetSpriteX(Sprite2)
	SpriteY = GetSpriteY(Sprite2)
	Angle = ATanFull(SpriteX - GetSpriteX(Sprite1), SpriteY - GetSpriteY(Sprite1))
	
	SetSpriteAngle(Sprite1, Angle)
endfunction Angle

global PrevAngle = 180

function SetSpriteLookDirectionCustom(Sprite1 as integer, x1 as integer, y1 as integer, x2 as integer, y2 as integer, Limit1 as integer, Limit2 as integer)
	Angle as float
	
	Angle = ATanFull(x2 - x1, y2 - y1)
	
	if Angle < Limit1 and Limit1 > 0
		Angle = Limit1
	elseif Angle > Limit2 and Limit2 > 0
		Angle = Limit2
	endif
	
	SetSpriteAngle(Sprite1, Angle)
endfunction Angle

function SetSpriteLookDirectionToColor(Sprite1 as integer, Sprite2 as integer)
	Angle# = SetSpriteLookDirection(Sprite1, Sprite2)
	
	R# = 256*cos(Angle#)
	G# = 256*cos(Angle# + 120)
	B# = 256*cos(Angle# - 120)
	
	if R# < 0 then R# = 0
	if G# < 0 then G# = 0
	if B# < 0 then B# = 0
	
	SetSpriteColor(Sprite1, round(R#), round(G#), round(B#), 255)
endfunction Angle#
