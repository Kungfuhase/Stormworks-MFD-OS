function round(num, numDecimalPlaces)
    if numDecimalPlaces and numDecimalPlaces>0 then
      local mult = 10^numDecimalPlaces
      return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
  end
  
  
  function onTick()
      laserRange = input.getNumber(1)
      output.setNumber(1,laserRange)
  end
  
  function onDraw()
      W = screen.getWidth()
      H = screen.getHeight()
      if laserRange == 0 then
          screen.setColor(32,32,32)
      elseif laserRange >2000 then
          laserRange = 0
          screen.setColor(255,0,0)
      else
          screen.setColor(255,255,64)
      end
      screen.drawText(4,4,round(laserRange,0))
  
      screen.setColor(255,255,64)
      screen.drawLine(W/2,(H/2)-5,W/2,(H/2)+6) --Middle Vertical Line
  
      screen.drawLine((W/2)-8,(H/2)-2,(W/2)-8,(H/2)+3)    --vertical Lines left
  
      screen.drawLine((W/2)+8,(H/2)-2,(W/2)+8,(H/2)+3)        --vertical Lines right
  
      screen.drawRect(1,1,W-2,H-2)                    --border
  
      screen.drawLine(0,16,32,16)     --Horizontal Line
  end
  