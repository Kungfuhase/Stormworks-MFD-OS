page=1
Counter=0
function onTick()
	W=input.getNumber(1)
	H=input.getNumber(2)
	inputX=input.getNumber(3)
	inputY=input.getNumber(4)
	isPressed=input.getBool(1)
	
	if page==1 then
		isPressingMenu1=isPressed and isPointInRectangle(inputX,inputY,1,1,30,6)
		isPressingMenu2=isPressed and isPointInRectangle(inputX,inputY,1,7,30,6)
		isPressingMenu3=isPressed and isPointInRectangle(inputX,inputY,1,13,30,6)
		isPressingMenu4=isPressed and isPointInRectangle(inputX,inputY,1,19,30,6)
	end
	if page==2 then
		isPressingMenu5=isPressed and isPointInRectangle(inputX,inputY,1,1,30,6)
		isPressingMenu6=isPressed and isPointInRectangle(inputX,inputY,1,7,30,6)
		isPressingMenu7=isPressed and isPointInRectangle(inputX,inputY,1,13,30,6)
		isPressingMenu8=isPressed and isPointInRectangle(inputX,inputY,1,19,30,6)
	end
	if page==3 then
		isPressingMenu9=isPressed and isPointInRectangle(inputX,inputY,1,1,30,6)
		isPressingMenu10=isPressed and isPointInRectangle(inputX,inputY,1,7,30,6)
		isPressingMenu11=isPressed and isPointInRectangle(inputX,inputY,1,13,30,6)
		isPressingMenu12=isPressed and isPointInRectangle(inputX,inputY,1,19,30,6)
	end
	
	isPressingMenuUp=isPressed and isPointInRectangle(inputX,inputY,25,27,5,5)
	isPressingMenuDown=isPressed and isPointInRectangle(inputX,inputY,1,27,5,5)
	
	if isPressingMenu1 then
		output.setBool(1,true)
	elseif isPressingMenu2 then
		output.setBool(2,true)
	elseif isPressingMenu3 then
		output.setBool(3,true)
	elseif isPressingMenu4 then
		output.setBool(4,true)
	elseif isPressingMenu5 then
		output.setBool(5,true)
	elseif isPressingMenu6 then
		output.setBool(6,true)
	elseif isPressingMenu7 then
		output.setBool(7,true)
	elseif isPressingMenu8 then
		output.setBool(8,true)
	elseif isPressingMenu9 then
		output.setBool(9,true)
	elseif isPressingMenu10 then
		output.setBool(10,true)
	elseif isPressingMenu11 then
		output.setBool(11,true)
	elseif isPressingMenu12 then
		output.setBool(12,true)
	end
	
	
	if page>3 then
		page=3
	elseif page<1 then
		page=1
	end
	
	Counter=Counter-1
	if Counter<0 then
		Counter=0
	end
end

function isPointInRectangle(x,y,rectX,rectY,rectW,rectH)
	return x>rectX and y>rectY and x<rectX+rectW and y<rectY+rectH
end

function onDraw()
	if isPressingMenuUp then
		screen.drawTriangleF(30,29,25,31,25,27)
		if Counter==0 then
			page=page+1
			Counter=20
		end
	else
		screen.drawTriangle(30,29,25,31,25,27)
	end
	
	if isPressingMenuDown then
		screen.drawTriangleF(1,29,6,31,6,27)
		if Counter==0 then
			page=page-1
			Counter=20
		end
	else
		screen.drawTriangle(1,29,6,31,6,27)
	end
	
	screen.drawTextBox(4,26,22,5, page .. "/3", 0,0)
	
	if page==1 then
		screen.drawRect(1,1,30,6)
		screen.drawTextBox(1,1,30,6,"Guns",0,0)
	
		screen.drawRect(1,7,30,6)
		screen.drawTextBox(1,7,30,6,"Cam",0,0)
	
		screen.drawRect(1,13,30,6)
		screen.drawTextBox(1,13,30,6,"System",0,0)
	
		screen.drawRect(1,19,30,6)
		screen.drawTextBox(1,19,30,6,"Nav",0,0)
	end
	
	if page==2 then
		screen.drawRect(1,1,30,6)
		screen.drawTextBox(1,1,30,6,"Balls",0,0)
	
		screen.drawRect(1,7,30,6)
		screen.drawTextBox(1,7,30,6,"Cum",0,0)
	
		screen.drawRect(1,13,30,6)
		screen.drawTextBox(1,13,30,6,"Penis",0,0)
	
		screen.drawRect(1,19,30,6)
		screen.drawTextBox(1,19,30,6,"Stasi",0,0)
	end
	
	if page==3 then
		screen.drawRect(1,1,30,6)
		screen.drawTextBox(1,1,30,6,"AAAAAA",0,0)
	
		screen.drawRect(1,7,30,6)
		screen.drawTextBox(1,7,30,6,"Cock",0,0)
	
		screen.drawRect(1,13,30,6)
		screen.drawTextBox(1,13,30,6,"Lmao",0,0)
	
		screen.drawRect(1,19,30,6)
		screen.drawTextBox(1,19,30,6,"Chaff",0,0)
	end
	
end