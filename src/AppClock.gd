extends Node2D

func display_time(hour_arr, minute_arr):
	if hour_arr[0] == 1:
		$HourDigit1.texture = load("res://assets/clock_app_numbers/1.png")
	elif hour_arr[0] == 2:
		$HourDigit1.texture = load("res://assets/clock_app_numbers/2.png")
	else:
		$HourDigit1.texture = load("res://assets/clock_app_numbers/0.png")
	
	if hour_arr[1] == 1:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/1.png")
	elif hour_arr[1] == 2:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/2.png")
	elif hour_arr[1] == 3:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/3.png")
	elif hour_arr[1] == 4:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/4.png")
	elif hour_arr[1] == 5:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/5.png")
	elif hour_arr[1] == 6:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/6.png")
	elif hour_arr[1] == 7:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/7.png")
	elif hour_arr[1] == 8:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/8.png")
	elif hour_arr[1] == 9:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/9.png")
	else:
		$HourDigit2.texture = load("res://assets/clock_app_numbers/0.png")
	
	if minute_arr[0] == 1:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/1.png")
	elif minute_arr[0] == 2:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/2.png")
	elif minute_arr[0] == 3:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/3.png")
	elif minute_arr[0] == 4:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/4.png")
	elif minute_arr[0] == 5:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/5.png")
	elif minute_arr[0] == 6:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/6.png")
	elif minute_arr[0] == 7:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/7.png")
	elif minute_arr[0] == 8:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/8.png")
	elif minute_arr[0] == 9:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/9.png")
	else:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers/0.png")
	
	if minute_arr[1] == 1:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/1.png")
	elif minute_arr[1] == 2:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/2.png")
	elif minute_arr[1] == 3:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/3.png")
	elif minute_arr[1] == 4:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/4.png")
	elif minute_arr[1] == 5:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/5.png")
	elif minute_arr[1] == 6:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/6.png")
	elif minute_arr[1] == 7:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/7.png")
	elif minute_arr[1] == 8:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/8.png")
	elif minute_arr[1] == 9:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/9.png")
	else:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers/0.png")

func display_time_lit(hour_arr, minute_arr):
	if hour_arr[0] == 1:
		$HourDigit1.texture = load("res://assets/clock_app_numbers_lit/1.png")
	elif hour_arr[0] == 2:
		$HourDigit1.texture = load("res://assets/clock_app_numbers_lit/2.png")
	else:
		$HourDigit1.texture = load("res://assets/clock_app_numbers_lit/0.png")
	
	if hour_arr[1] == 1:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/1.png")
	elif hour_arr[1] == 2:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/2.png")
	elif hour_arr[1] == 3:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/3.png")
	elif hour_arr[1] == 4:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/4.png")
	elif hour_arr[1] == 5:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/5.png")
	elif hour_arr[1] == 6:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/6.png")
	elif hour_arr[1] == 7:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/7.png")
	elif hour_arr[1] == 8:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/8.png")
	elif hour_arr[1] == 9:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/9.png")
	else:
		$HourDigit2.texture = load("res://assets/clock_app_numbers_lit/0.png")
	
	if minute_arr[0] == 1:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/1.png")
	elif minute_arr[0] == 2:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/2.png")
	elif minute_arr[0] == 3:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/3.png")
	elif minute_arr[0] == 4:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/4.png")
	elif minute_arr[0] == 5:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/5.png")
	elif minute_arr[0] == 6:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/6.png")
	elif minute_arr[0] == 7:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/7.png")
	elif minute_arr[0] == 8:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/8.png")
	elif minute_arr[0] == 9:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/9.png")
	else:
		$MinuteDigit1.texture = load("res://assets/clock_app_numbers_lit/0.png")
	
	if minute_arr[1] == 1:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/1.png")
	elif minute_arr[1] == 2:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/2.png")
	elif minute_arr[1] == 3:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/3.png")
	elif minute_arr[1] == 4:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/4.png")
	elif minute_arr[1] == 5:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/5.png")
	elif minute_arr[1] == 6:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/6.png")
	elif minute_arr[1] == 7:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/7.png")
	elif minute_arr[1] == 8:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/8.png")
	elif minute_arr[1] == 9:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/9.png")
	else:
		$MinuteDigit2.texture = load("res://assets/clock_app_numbers_lit/0.png")

func _ready():
	pass # Replace with function body.

func _process(_delta):
	var clock = OS.get_time()
	var time_hour = []
	var time_minute = []
	
	for i in str(clock.hour):
		time_hour.append(int(i))
	for i in str(clock.minute):
		time_minute.append(int(i))
	
	if time_hour.size() != 2:
		var temp_hour = time_hour[0]
		time_hour[0] = 0
		time_hour.append(temp_hour)
	if time_minute.size() != 2:
		var temp_minute = time_minute[0]
		time_minute[0] = 0
		time_minute.append(temp_minute)
	
	#print(time_hour)
	#print(time_minute)
	
	if $LitUpButton.pressed == true:
		display_time_lit(time_hour, time_minute)
		$ClockFace.texture = load("res://assets/clock_app_face_lit.png")
		$Divider.texture = load("res://assets/clock_app_numbers_lit/dots.png")
	else:
		display_time(time_hour, time_minute)
		$ClockFace.texture = load("res://assets/clock_app_face.png")
		$Divider.texture = load("res://assets/clock_app_numbers/dots.png")
	
	#print($LitUpButton.pressed)
	
	#print(str(clock.hour) + ":" + str(clock.minute))
