extends Node

@onready var puse_menu:VBoxContainer = $VBoxContainer

func _physics_process(delta: float) -> void:
	pause()

func pause():
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = not get_tree().paused
		puse_menu.visible = not puse_menu.visible
