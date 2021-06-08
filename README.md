# AGK-PositionToRotation
This code allows you to take the position of a 2D and translate that into an angle that another sprite can be set to.

Please note that this code has been made for the App Game Kit 2D engine, if you would like to support 3D objects, you make fork this and do so.

## SetSpriteLookDirection
`SetSpriteLookDirection(Sprite1ID [integer], Sprite2ID [integer])`

This function takes *Sprite1* and angles it in the direction of *Sprite2*.

## SetSpriteLookDirectionCustom
`SetSpriteLookDirectionCustom(Sprite1 [integer], x1 [integer], y1 [integer], x2 [integer], y2 [integer], Limit1 [integer], Limit2 [integer])`

This function takes *Sprite1* and uses *x1, y1, x2, y2* as custom positions (rather than using Sprite positions in **SetSpriteLookDirection()**.

*Limit1* and *Limit2* are to be used to limit the angle that *Sprite1* can rotate. You can set these to 0 to bypass this.

## SetSpriteLookDirectionToColor
`SetSpriteLookDirectionToColor(Sprite1 [integer], Sprite2 [integer])`
Does exactly the same thing as **SetSpriteLookDirection** but changes the color of *Sprite1* to the angle returned by using HSV.

[Video Demonstration](https://github.com/Adxxmm/AGK-PositionToRotation/blob/main/Examples/M8YtQfFf58.mp4)
