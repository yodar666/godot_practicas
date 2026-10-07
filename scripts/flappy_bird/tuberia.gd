extends CharacterBody2D

var direccion: int = -1
var vel: float = 200.0
@onready var raycast: RayCast2D = $RayCast2D
@onready var kill_p:Area2D = $Area2D

func _ready() -> void:
	kill_p.body_entered.connect(kill_player)
	#coneccion que detecta si un body entra en el area

func kill_player(body: Node2D):
	LogicaG.bird_d = true
	LogicaG.fb_points = 0


func direction(dir: int, vel: float):
	direccion = dir
	vel = vel
	#metodo que resive la direccion y velocidad, si no recibe nada usa los declarados


func _physics_process(delta: float) -> void:
	position.x += direccion * vel * delta
	if raycast.is_colliding():
		#.is_collidind detecta colision del raycast
		LogicaG.fb_points += 10
