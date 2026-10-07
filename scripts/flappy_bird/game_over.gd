extends Control

@onready var replay:Button = $VBoxContainer/play
@onready var menu:Button = $VBoxContainer/menu
@onready var salir:Button = $VBoxContainer/salir




func _ready() -> void:
	salir.pressed.connect(quit_game)
	replay.pressed.connect(re_play)
	#coneccion a señales tipo pressed

func re_play():
	get_tree().paused = not get_tree().paused
	# similar a un if para pausar si no esta pausado 
	get_tree().change_scene_to_file("res://escenes/flappybird/bird_screen.tscn")
	#cambia la escena
	LogicaG.bird_d = false
	#mata al player en el global
	

func quit_game():
	get_tree().quit()
	#quita el juego
