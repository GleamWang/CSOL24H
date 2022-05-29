start_x_position = 43326
start_y_position = 39855

end_x_position = 42392
end_y_position = 47505
 
function OnEvent(event, arg) 
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 3 and IsKeyLockOn("capslock") ) then  
		OutputLogMessage("event = %s, arg = %s\n", event, arg)  
		x, y = GetMousePosition();
		OutputLogMessage("Mouse is at %d, %d\n", x, y);
		fun()
	end
end

 
function fun()
	while IsKeyLockOn("capslock")  
	do
		MoveMouseTo(start_x_position,start_y_position)
		Sleep(50)
		PressAndReleaseMouseButton(1) 
		Sleep(50)
		MoveMouseRelative(0,3000)
		Sleep(50)
		ReleaseMouseButton(1)
		PressKey(4)
		PressMouseButton(1)
		ReleaseKey(4)
		PressKey(17)
		Sleep(50)
		for i = 0, 3000, 5 do
			MoveMouseRelative(2,0)
			Sleep(1)
		end
		Sleep(100)
		MoveMouseRelative(-1200,600)
		Sleep(50)
		ReleaseMouseButton(1)
		ReleaseKey(17)
		PressAndReleaseKey(1)
		Sleep(10)
		PressAndReleaseKey(1)
		Sleep(10)
		MoveMouseTo(end_x_position,end_y_position)
		Sleep(50)
		PressAndReleaseMouseButton(1)
		Sleep(50) 
	end
end