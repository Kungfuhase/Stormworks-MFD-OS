function round(num, numDecimalPlaces)
    if numDecimalPlaces and numDecimalPlaces>0 then
      local mult = 10^numDecimalPlaces
      return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
  end
  
  function onTick()
      PositionX = input.getNumber(1)
      PositionY = input.getNumber(2)
      Heading = input.getNumber(3)
      Speed = input.getNumber(4)
      Heading =  ((1-Heading)%1)*360
      negativeHeading = Heading - (Heading*2)
  end
  
  function onDraw()
      H = screen.getHeight()
      W = screen.getWidth()
      
      screen.setMapColorGrass(0,255,0)		--sets colors for the map, change these if you dont like the color
      screen.setMapColorLand(139,69,19)
      screen.setMapColorOcean(0,0,255)
      screen.setMapColorSand(76,70,50)
      screen.setMapColorShallows(0,0,100)
      screen.setMapColorSnow(0,0,0)
      
      screen.drawMap(PositionX, PositionY,4)	--draws Map centerd on X and Y Position of Input with big zoom (everything above about 5 is too slow for game)
      screen.setColor(255,0,0,196)				--sets color for Heading,Speed,Ship and Heading Indicator, change this if you dont like it being red
      screen.drawText(1,1,round(Heading,0))
      --screen.drawText(1,7,round(Speed,1))
      --screen.drawText(1, H-13, PositionX)
      --screen.drawText(1, H-6,PositionY)
      screen.setColor(255,0,0,255)
      screen.drawCircleF(W/2,H/2,2)
      screen.drawLine(W/2,H/2,-7*math.sin(math.rad(negativeHeading))+W/2,-7*math.cos(math.rad(negativeHeading))+H/2)		--complex shit that draws the Heading Indicator (dont ask me how it works idk)
  end