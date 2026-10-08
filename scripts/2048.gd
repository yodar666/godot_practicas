extends Node2D

const grid_tamaño:Vector2 =Vector2(5,5)
const tamano_casilla = 100
const  separacion = 10
const grid_origen:Vector2 = Vector2(300,50)
const casilla_juego = "casilla_juego"
const color_casilla:Dictionary = {
	0: Color("#baab9c"),
	2: Color("#f2e9d2"),
	4: Color("#e6cca5"),
	8: Color("#f2b179"),
	16: Color("#f67c5f"),
	32: Color("#f65e3b"),
	64: Color("#edcc61"),
	128: Color("#edc850"),
	256: Color("#edc53f"),
	512: Color("#edc22e"),
}

var grid = [
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0]
]

func _ready() -> void:
	make_grid()

func posicion_casilla(posicion: Vector2) -> Vector2:
	return grid_origen + Vector2 (posicion.x * (tamano_casilla + separacion),posicion.y * (tamano_casilla + separacion))

func make_grid():
	for y in grid_tamaño.y:
		for x in grid_tamaño.x:
			print(Vector2(x,y)) #vector 2 para imprimir a manera de cordenada
			var posicion = Vector2(x,y)
			var fondo_casilla = ColorRect.new()
			fondo_casilla.size = Vector2(tamano_casilla,tamano_casilla)
			fondo_casilla.color = color_casilla[0]
			fondo_casilla.position = posicion_casilla(posicion)
			fondo_casilla.add_to_group(casilla_juego)
			add_child(fondo_casilla)
