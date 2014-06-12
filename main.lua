display.setStatusBar(display.HiddenStatusBar)
display.setDefault( "anchorX", 0)
display.setDefault( "anchorY", 0)
math.randomseed( os.time() ) 
local storyboard = require "storyboard"
storyboard.gotoScene( "start" )