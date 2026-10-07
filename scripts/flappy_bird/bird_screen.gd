extends Node2D
var vida_p: bool
#var vida_p = LogicaG.bird_d, <-- esto sobre escribe el script global
@onready var g_over:Control = $game_over
@onready var win_fb:Control = $win_screen
var puntos: int

func _ready() -> void:
	g_over.visible = false

func _process(delta: float) -> void:
	vida_p = LogicaG.bird_d  
	puntos = LogicaG.fb_points
	# se declaran asi para no sobre escribir el global 
	
	if puntos >= 2010:
		get_tree().paused = not get_tree().paused
		#como si fuera un if pero de una sola linea
		win_fb.visible = true
		#si el nodo en la escena no es visible .visible lo hace visible si es true
	
	if vida_p == true:
		get_tree().paused = not get_tree().paused
		g_over.visible = true
