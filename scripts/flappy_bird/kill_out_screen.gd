extends Node2D
@onready var area:Area2D = $Area2D

func _ready() -> void:
	area.body_entered.connect(_entro)

func _entro(body: Node2D):
	body.queue_free()
