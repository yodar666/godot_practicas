extends Node2D

@export var dir = 1
@export var m_t = 0
@export var mx_t = 2
@export var vel = 150
@onready var t: Timer = $Timer
const tub = preload("res://escenes/flappybird/tuberia.tscn")
#preload es para cargar un escena no instanciada en la escena que se usa
var time:float = 0

func _ready() -> void:
	t.timeout.connect(_timeout) #coneccion con timer
	sig_timer()
	spawn_t()

func sig_timer():
	t.start(randf_range(m_t,mx_t))
	#.start inicia el contador de timer

func spawn_t():
	var tuberia = tub.instantiate()
	#.instantiate instancia la escena al abol de escenas donde este el script
	#La instanciación permite crear varios objetos de la misma clase con diferentes valores para sus atributos.
	add_child(tuberia)
	#lo añade a la escena
	tuberia.position = Vector2.ZERO
	#indica que lo añade en las cordenads 0,0 relativas al nodo del que es el script
	if tuberia.has_method("direction"):
		#un metodo como en una clase o una libreria
		tuberia.direction(dir,vel)
		vel += 10


func _timeout() -> void:
	spawn_t()
	sig_timer()
