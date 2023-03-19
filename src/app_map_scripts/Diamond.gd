extends Sprite

var selected = false

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if get_global_mouse_position()[0] > 26 and get_global_mouse_position()[0] < 197 and get_global_mouse_position()[1] < 170 and get_global_mouse_position()[1] > 27:
		if selected and Input.is_mouse_button_pressed(BUTTON_LEFT):
			scale = Vector2(2,2)
			position = get_global_mouse_position()
		else:
			scale = Vector2(1,1)

func _on_Area2D_mouse_entered():
	selected = true

func _on_Area2D_mouse_exited():
	selected = false
