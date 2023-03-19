extends Node2D

var app00 = preload("res://scenes/App00.tscn")
var app12 = preload("res://scenes/App12.tscn")
var appclock = preload("res://scenes/AppClock.tscn")
var appmap = preload("res://scenes/AppMap.tscn")
var appmemo = preload("res://scenes/AppMemo.tscn")
var appcounter = preload("res://scenes/AppCounter.tscn")
var appcalculator = preload("res://scenes/AppCalculator.tscn")
var appmusicplayer = preload("res://scenes/AppMusicPlayer.tscn")
var apppoketchhelp = preload("res://scenes/AppPoketchHelp.tscn")
var app_list = ["AppClock", "AppMap", "AppMemo", "AppCounter", "AppCalculator", "AppMusicPlayer", "AppPoketchHelp", "App00", "App12"]
var app_pointer = 0

var follow_xy = Vector2()
var follow = false

func switch_app() -> void:
	
	if get_node_or_null("App00"):
		$App00.queue_free()
	if get_node_or_null("App12"):
		$App12.queue_free()
	if get_node_or_null("AppClock"):
		$AppClock.queue_free()
	if get_node_or_null("AppMap"):
		$AppMap.queue_free()
	if get_node_or_null("AppMemo"):
		$AppMemo.queue_free()
	if get_node_or_null("AppCounter"):
		$AppCounter.queue_free()
	if get_node_or_null("AppCalculator"):
		$AppCalculator.queue_free()
	if get_node_or_null("AppMusicPlayer"):
		$AppMusicPlayer.queue_free()
	if get_node_or_null("AppPoketchHelp"):
		$AppPoketchHelp.queue_free()
	
	if app_pointer == 0:
		add_child(appclock.instance())
	elif app_pointer == 1:
		add_child(appmap.instance())
	elif app_pointer == 2:
		add_child(appcalculator.instance())
	elif app_pointer == 3:
		add_child(appmemo.instance())
	elif app_pointer == 4:
		add_child(appcounter.instance())
	elif app_pointer == 5:
		add_child(app00.instance())
	elif app_pointer == 6:
		add_child(app12.instance())
	elif app_pointer == 7:
		add_child(appmusicplayer.instance())
	elif app_pointer == 8:
		add_child(apppoketchhelp.instance())
	
	pass

func switch_anim() -> void:
	var tw_top = create_tween()
	var tw_bottom = create_tween()
	tw_top.tween_property($WatchTest/BlackScreenTop, "scale:y", 1, 0.2).set_trans(Tween.TRANS_LINEAR)
	tw_bottom.tween_property($WatchTest/BlackScreenBottom, "scale:y", -1, 0.2).set_trans(Tween.TRANS_LINEAR)
	yield(tw_top, "finished")
	yield(tw_bottom, "finished")
	
	switch_app()
	$WatchTest/Timer.start()

func _on_Timer_timeout():
	var tw_top_end = create_tween()
	var tw_bottom_end = create_tween()
	tw_top_end.tween_property($WatchTest/BlackScreenTop, "scale:y", 0, 0.2).set_trans(Tween.TRANS_LINEAR)
	tw_bottom_end.tween_property($WatchTest/BlackScreenBottom, "scale:y", 0, 0.2).set_trans(Tween.TRANS_LINEAR)

func _ready():
	$WatchTest/IntroTimer.start()
	add_child(appclock.instance())
	print(app_list.size())

func _process(_delta):
	if follow == true:
		OS.window_position = OS.window_position + get_global_mouse_position() - follow_xy
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_pressed("ui_min"):
		OS.window_minimized = true
	if Input.is_action_pressed("ui_1"):
		$WatchTest/WatchFace.texture = load("res://assets/poketch_face_pink.png")
	if Input.is_action_pressed("ui_2"):
		$WatchTest/WatchFace.texture = load("res://assets/poketch_face_blue.png")

func _on_PoketchTopButton2_pressed():
	app_pointer += 1
	if app_pointer > app_list.size() - 1:
		app_pointer = 0
	print(app_pointer)
	
	switch_anim()
	$WatchTest/AudioStreamPlayer.play()

func _on_PoketchBottomButton2_pressed():
	app_pointer -= 1
	if app_pointer < 0:
		app_pointer = app_list.size() - 1
	print(app_pointer)
	
	switch_anim()
	$WatchTest/AudioStreamPlayer.play()

func _on_Control_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			follow_xy = get_global_mouse_position()
			follow = !follow

func _on_IntroTimer_timeout():
	var tw_top_intro = create_tween()
	tw_top_intro.tween_property($WatchTest/BlackScreenTop, "scale:y", 0, 0.2).set_trans(Tween.TRANS_LINEAR)
	var tw_bottom_intro = create_tween()
	tw_bottom_intro.tween_property($WatchTest/BlackScreenBottom, "scale:y", 0, 0.2).set_trans(Tween.TRANS_LINEAR)

#func _process(_delta):
#	var clock = OS.get_time()
#	var time = []
#	for i in str(clock.hour):
#		time.append(i)
#	for i in str(clock.minute):
#		time.append(i)
#	print(time)
#
#	#print(time)
#	#print(str(clock.hour) + ":" + str(clock.minute))
#
#	pass
