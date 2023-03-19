extends Node2D

func _ready():
	blink()
	pass

func _process(_delta):
	pass # Replace with function body.

func blink() -> void:
	while true:
		$Marker.hide()
		$Marker/Timer.start()
		yield($Marker/Timer, "timeout")
		$Marker.show()
		$Marker/Timer.start()
		yield($Marker/Timer, "timeout")
		pass

func _on_Timer_timeout():
	pass # Replace with function body.
