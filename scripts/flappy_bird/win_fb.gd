extends Control

@onready var sig:Button = $VBoxContainer/sigiente
@onready var menu:Button = $VBoxContainer/menu
@onready var salir:Button = $VBoxContainer/salir




func _ready() -> void:
	salir.pressed.connect(quit_game)
	sig.pressed.connect(sig_min_g)

func sig_min_g():
	get_tree().paused = not get_tree().paused
	get_tree().change_scene_to_file("res://escenes/tetris_screen/tetris_screen.tscn")
	LogicaG.bird_d = false
	

func quit_game():
	get_tree().quit()
