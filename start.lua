local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local startbutton 


function scene:createScene( event )
        local group = self.view
       local background = display.newRect( 0, 0, display.contentWidth, display.contentHeight)
		background:setFillColor( 0,.39,.75)
		group:insert(background)
		local bigplane = display.newImage("bigplane.png",0,0)
		group:insert(bigplane)
		
       startbutton= display.newImage("startbutton.png",264,670)
		group:insert(startbutton)end
-- Called immediately after scene has moved onscreen:function startGame()
	 storyboard.gotoScene("gamelevel")
end
function scene:enterScene( event )
	startbutton:addEventListener("tap",startGame)
end

function scene:exitScene( event )
		startbutton:removeEventListener("tap",startGame)
end
-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )
return scene