extends Node2D

var music_list = ["TWINLEAF TOWN", "ROUTE 201", "LAKE", "BATTLE! POKEMON",
"SANDGEM TOWN", "LAB", "POKEMON CENTER", "BATTLE! TRAINER", "JUBILIFE CITY",
"ROUTE 203", "OREBURGH CITY", "GYM", "BATTLE! GYM", "FLOAROMA TOWN", 
"ROUTE 205", "ETERNA FOREST", "ETERNA CITY", "ROUTE 206", "HEARTHOME CITY",
"ROUTE 209", "ROUTE 210", "VEILSTONE CITY", "VALOR LAKEFRONT", "CANALAVE CITY",
"ROUTE 216", "SNOWPOINT CITY", "MT. CORONET", "BATTLE! DIALGA/PALKIA", "SUNYSHORE CITY",
"POKEMON LEAGUE", "FIGHT AREA", "ROUTE 225", "ROUTE 228", "BATTLE! LAKE TRIO",
"BATTLE TOWER", "CYNTHIA", "BATTLE! CHAMPION", "BATTLE! GIRATINA"]
var music_pointer = 0

func _ready():
	$MusicName.add_color_override("font_color", Color((16.0/255.0), (41.0/255.0), (24.0/255.0), (255.0/255.0)))
	$MusicName.add_color_override("font_color_shadow", Color((57.0/255.0), (82.0/255.0), (49.0/255.0), (255.0/255.0)))

func _process(_delta):
	if music_pointer == 0:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 1:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 2:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 3:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 4:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 5:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 6:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 7:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 8:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 9:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 10:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 11:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 12:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 13:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 14:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 15:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 16:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 17:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 18:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 19:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 20:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 21:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 22:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 23:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 24:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 25:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 26:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 27:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 28:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 29:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 30:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 31:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 32:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 33:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 34:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 35:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 36:
		$MusicName.text = music_list[music_pointer]
	elif music_pointer == 37:
		$MusicName.text = music_list[music_pointer]


func _on_RightButton_pressed():
	$SoundPlayer.play()
	music_pointer +=1
	if music_pointer > music_list.size() - 1:
		music_pointer = 0
	pass # Replace with function body.


func _on_LeftButton_pressed():
	$SoundPlayer.play()
	music_pointer -= 1
	if music_pointer < 0:
		music_pointer = music_list.size() - 1
	pass # Replace with function body.


func _on_PlayButton_pressed():
	$SoundPlayer.play()
	$Buttons/PauseButton.pressed = false
	if music_pointer == 0:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/1-Twinleaf Town.mp3")
		$MusicPlayer.play()
	elif music_pointer == 1:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/2-Route 201.mp3")
		$MusicPlayer.play()
	elif music_pointer == 2:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/3-Lake.mp3")
		$MusicPlayer.play()
	elif music_pointer == 3:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/4-Battle! Wild Pokémon.mp3")
		$MusicPlayer.play()
	elif music_pointer == 4:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/5-SandgemTown.mp3")
		$MusicPlayer.play()
	elif music_pointer == 5:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/6-Laboratory.mp3")
		$MusicPlayer.play()
	elif music_pointer == 6:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/7-Pokémon Center.mp3")
		$MusicPlayer.play()
	elif music_pointer == 7:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/8-Battle! Trainer.mp3")
		$MusicPlayer.play()
	elif music_pointer == 8:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/9-Jubilife City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 9:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/10-Route 203.mp3")
		$MusicPlayer.play()
	elif music_pointer == 10:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/11-Oreburgh City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 11:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/12-Gym.mp3")
		$MusicPlayer.play()
	elif music_pointer == 12:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/13-Battle! Gym Leader.mp3")
		$MusicPlayer.play()
	elif music_pointer == 13:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/14-Floaroma Town.mp3")
		$MusicPlayer.play()
	elif music_pointer == 14:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/15-Route 205.mp3")
		$MusicPlayer.play()
	elif music_pointer == 15:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/16-Eterna Forest.mp3")
		$MusicPlayer.play()
	elif music_pointer == 16:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/17-Eterna City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 17:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/18-Route 206.mp3")
		$MusicPlayer.play()
	elif music_pointer == 18:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/19-Hearthome City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 19:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/20-Route 209.mp3")
		$MusicPlayer.play()
	elif music_pointer == 20:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/21-Route 210.mp3")
		$MusicPlayer.play()
	elif music_pointer == 21:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/22-Veilstone City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 22:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/23-Valor Lakefront.mp3")
		$MusicPlayer.play()
	elif music_pointer == 23:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/24-Canalave City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 24:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/25-Route 216.mp3")
		$MusicPlayer.play()
	elif music_pointer == 25:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/26-Snowpoint City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 26:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/27-Mt. Coronet.mp3")
		$MusicPlayer.play()
	elif music_pointer == 27:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/28-Battle! Dialga _ Palkia.mp3")
		$MusicPlayer.play()
	elif music_pointer == 28:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/29-Sunyshore City.mp3")
		$MusicPlayer.play()
	elif music_pointer == 29:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/30- Pokémon League.mp3")
		$MusicPlayer.play()
	elif music_pointer == 30:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/31-Fight Area.mp3")
		$MusicPlayer.play()
	elif music_pointer == 31:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/32-Route 225.mp3")
		$MusicPlayer.play()
	elif music_pointer == 32:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/33-Route 228.mp3")
		$MusicPlayer.play()
	elif music_pointer == 33:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/34-Battle! Uxie _ Mesprit _ Azelf.mp3")
		$MusicPlayer.play()
	elif music_pointer == 34:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/35-Battle Tower.mp3")
		$MusicPlayer.play()
	elif music_pointer == 35:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/36-Champion Shirona.mp3")
		$MusicPlayer.play()
	elif music_pointer == 36:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/37-Battle! Champion.mp3")
		$MusicPlayer.play()
	elif music_pointer == 37:
		$MusicPlayer.stop()
		$MusicPlayer.stream = load("res://musics/38-Battle! Giratina.mp3")
		$MusicPlayer.play()


func _on_StopButton_pressed():
	$SoundPlayer.play()
	$Buttons/PauseButton.pressed = false
	$MusicPlayer.stop()


func _on_PauseButton_toggled(button_pressed):
	$SoundPlayer.play()
	if button_pressed == true:
		$MusicPlayer.stream_paused = true
	else:
		$MusicPlayer.stream_paused = false
