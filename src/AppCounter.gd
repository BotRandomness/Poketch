extends Node2D

var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	var numbers = []
	for i in str(counter):
		numbers.append(int(i))
	if numbers.size() == 1:
		numbers.append(0)
		numbers.append(0)
		numbers.append(0)
	elif numbers.size() == 2:
		numbers.append(0)
		numbers.append(0)
		var temp_num = numbers[0]
		numbers[0] = numbers[1]
		numbers[1] = temp_num
	elif numbers.size() == 3:
		var temp_num = numbers[2]
		numbers[2] = numbers[0]
		numbers[0] = temp_num
		numbers.append(0)
	else:
		var temp_num = numbers[3]
		var temp_num2 = numbers[1]
		numbers[3] = numbers[0]
		numbers[0] = temp_num
		numbers[1] = numbers[2]
		numbers[2] = temp_num2
	#print(numbers)
	
	$Digit0.texture = load("res://assets/counter_app_sprites/" + str(numbers[0]) + ".png")
	$Digit1.texture = load("res://assets/counter_app_sprites/" + str(numbers[1]) + ".png")
	$Digit2.texture = load("res://assets/counter_app_sprites/" + str(numbers[2]) + ".png")
	$Digit3.texture = load("res://assets/counter_app_sprites/" + str(numbers[3]) + ".png")
	

func _on_CountButton_pressed():
	counter += 1
	$AudioStreamPlayer.play()
