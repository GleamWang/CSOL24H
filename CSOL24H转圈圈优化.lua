start_x_position = 43326
start_y_position = 39855

end_x_position = 41977
end_y_position = 47413

esc_x_position = 32639
esc_y_position = 39734
 
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
		MoveMouseRelative(0,4000)
		Sleep(50)
		PressAndReleaseKey(3)
		--PressAndReleaseKey("R")
		Sleep(10)
		PressAndReleaseKey(1)
		Sleep(10)
		PressAndReleaseKey(1)
		Sleep(10)
		--MoveMouseTo(esc_x_position,esc_y_position)
		--Sleep(30)
		--PressAndReleaseMouseButton(1)
		--Sleep(30) 
		PressAndReleaseKey("B")
		Sleep(50)
		PressAndReleaseKey("S")
		Sleep(50)
		PressAndReleaseKey(3)
		PressMouseButton(3)
		PressKey(17)
		Sleep(50)
		for i = 0, 3000, 5 do
			MoveMouseRelative(2,0)
			Sleep(1)
		end
		Sleep(100)
		ReleaseMouseButton(3)
		ReleaseKey(17)
		Sleep(10)
		MoveMouseTo(end_x_position,end_y_position)
		Sleep(50)
		PressAndReleaseMouseButton(1)
		Sleep(50) 
	end
end
