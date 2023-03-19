extends Node2D

var clicked = false
var drawn = []
var erased = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and get_global_mouse_position()[0] > 16 and get_global_mouse_position()[0] < 170 and get_global_mouse_position()[1] > 16 and get_global_mouse_position()[1] < 165 and $Buttons/PenButton.pressed == true:
		clicked = true
		drawn.append(get_global_mouse_position())
	elif Input.is_mouse_button_pressed(BUTTON_LEFT) and get_global_mouse_position()[0] > 16 and get_global_mouse_position()[0] < 170 and get_global_mouse_position()[1] > 16 and get_global_mouse_position()[1] < 165 and $Buttons/EraserButton.pressed == true:
		clicked = true
		erased.append(get_global_mouse_position())
	else:
		clicked = false
	
	if $Buttons/PenButton.pressed == true:
		$Buttons/EraserButton.pressed = false
	if $Buttons/EraserButton.pressed == true:
		$Buttons/PenButton.pressed = false
	
	#print(clicked)
	#print(get_global_mouse_position())
	
	update()

func _draw():
	for i in drawn:
	 draw_circle(i, 1.3, Color.black)
	for i in erased:
		draw_circle(i, 2.2, Color((112.0/255.0), (176.0/255.0), (112.0/255.0), (255.0/255.0)))


func _on_PenButton_toggled(_button_pressed):
	$AudioStreamPlayer.play()


func _on_EraserButton_toggled(_button_pressed):
	$AudioStreamPlayer.play()
