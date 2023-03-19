extends Node2D

var number_one = []
var number_two = []
var operator = ""
var answer = []

var state = 0

func remove(remove_numbers, remove_operation_sign):
	if remove_numbers == true:
		$Digit0.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit1.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit2.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit3.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit4.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit5.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit6.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit7.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit8.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placeholder_number.png")
		$Digit9.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/0.png")
	if remove_operation_sign == true:
		$Operator.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/placehoder_operator.png")

func display_number(arr):
	var digit = ""
	if arr.size() > 0:
		for i in range(arr.size()):
				digit = "Digit" + str((10 - arr.size()) + i)
				if str(arr[i]) != ".":
					get_node(digit).texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/" + str(arr[i]) + ".png")
				elif str(arr[i]) == ".":
					get_node(digit).texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/" + "dot" + ".png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
#	print(number_one)
#	print(operator)
#	print(number_two)
#	print(answer)
	
	if state == 0:
		remove(true, true)
		display_number(number_one)
	elif state == 1:
		remove(true, false)
		display_number(number_two)

func _on_7Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(7)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(7)
	$AudioStreamPlayer.play()


func _on_8Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(8)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(8)
	$AudioStreamPlayer.play()


func _on_9Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(9)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(9)
	$AudioStreamPlayer.play()


func _on_5Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(5)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(5)
	$AudioStreamPlayer.play()


func _on_6Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(6)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(6)
	$AudioStreamPlayer.play()


func _on_4Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(4)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(4)
	$AudioStreamPlayer.play()


func _on_1Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(1)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(1)
	$AudioStreamPlayer.play()


func _on_2Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(2)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(2)
	$AudioStreamPlayer.play()


func _on_3Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(3)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(3)
	$AudioStreamPlayer.play()


func _on_0Button_pressed():
	if state == 0:
		if number_one.size() < 10:
			number_one.append(0)
	elif state == 1:
		if number_two.size() < 10:
			number_two.append(0)
	$AudioStreamPlayer.play()


func _on_DotButton_pressed():
	if state == 0:
		if number_one.size() < 10 and number_one.size() != 9 and number_one.size() != 0 and number_one.find(".") == -1:
			number_one.append(".")
	elif state == 1:
		if number_two.size() < 10 and number_two.size() != 9 and number_two.size() != 0 and number_two.find(".") == -1:
			number_two.append(".")
	$AudioStreamPlayer.play()


func _on_ClearButton_pressed():
	number_one.clear()
	number_two.clear()
	answer.clear()
	operator = ""
	state = 0
	remove(true, true)
	$AudioStreamPlayer.play()


func _on_PulseButton_pressed():
	if state == 0:
		operator = "+"
		state = 1
		$Operator.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/plus_operator.png")
	$AudioStreamPlayer.play()


func _on_MinusButton_pressed():
	if state == 0:
		operator = "-"
		state = 1
		$Operator.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/minus_operator.png")
	$AudioStreamPlayer.play()


func _on_TimesButton_pressed():
	if state == 0:
		operator = "*"
		state = 1
		$Operator.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/times_operator.png")
	$AudioStreamPlayer.play()


func _on_DivideButton_pressed():
	if state == 0:
		operator = "/"
		state = 1
		$Operator.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/divide_operator.png")
	$AudioStreamPlayer.play()


func _on_EqualButton_pressed():
	$AudioStreamPlayer.play()
	var number_first = ""
	var number_second = ""
	var answer_temp = ""
	state = 2
	for nums in number_one:
		number_first += str(nums)
	for nums in number_two:
		number_second += str(nums)
	number_first = str(number_first)
	number_second = str(number_second)
	
	if number_first.find(".") == -1:
		number_first = int(number_first)
	else:
		number_first = float(number_first)
	if number_second.find(".") == -1:
		number_second = int(number_second)
	else:
		number_second = float(number_second)
	
	#print(number_first)
	#print(number_second)
	
	if operator == "+":
		answer_temp = str(number_first + number_second)
	elif operator == "-":
		answer_temp = str(number_first - number_second)
	elif operator == "*":
		answer_temp = str(number_first * number_second)
	elif operator == "/" and number_first != 0.0 and number_second != 0.0:
		answer_temp = str(number_first / number_second)
	
	if number_first == 0.0 and number_second == 0.0 and operator == "/":
		$Digit0.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit1.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit2.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit3.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit4.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit5.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit6.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit7.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit8.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
		$Digit9.texture = load("res://assets/calculator_app_sprites/calculator_app_numbers/error.png")
	else:
		for i in answer_temp:
			answer.append(i)
		
		if answer.size() > 10:
			answer = answer.slice(0, 9)
		
		remove(true, true)
		display_number(answer)
