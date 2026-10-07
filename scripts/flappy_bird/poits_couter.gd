extends Control

@onready var texto:Label = $numebers
var punt:int

func _process(delta: float) -> void:
	punt = LogicaG.fb_points
	var num_txt: String = str(punt)
	#convierte los muneros a letras
	texto.text = num_txt
