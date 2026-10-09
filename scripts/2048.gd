extends Node2D

const grid_tamaño:Vector2 =Vector2(5,5) #cantidad de casillas, tamaño de la matriz/grid
const tamano_casilla = 100 #tamaño de casilla
const  separacion = 10 #separacion entre casillas
const grid_origen:Vector2 = Vector2(300,50) #vector 2 para separar  el grid de los bordes
const casilla_juego = "casilla_juego" #grupo de las casillas
const color_casilla:Dictionary = { #diccionario de colores para los valores posbles del grid
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

var grid = [ #el grid de manera "visual" en una var, se puede hacer con 2 for
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0],
	[0,0,0,0,0]
]

func _ready() -> void:
	make_grid() #crea el grid

func posicion_casilla(posicion: Vector2) -> Vector2:
	return grid_origen + Vector2 (posicion.x * (tamano_casilla + separacion),posicion.y * (tamano_casilla + separacion))
	#devuelve  el vector de la separacion mas el vector  que  devuelve las matematicas de posicionar cada casilla
	# la suma es la pocicion del eje por el tamaño de la casilla mas la separacion

func make_grid():
	for y in grid_tamaño.y:
		#recorre el eje y
		for x in grid_tamaño.x:
			#recorre el eje x
			print(Vector2(x,y)) #vector 2 para imprimir a manera de cordenada
			var posicion = Vector2(x,y) 
			var fondo_casilla = ColorRect.new()
			fondo_casilla.size = Vector2(tamano_casilla,tamano_casilla)
			fondo_casilla.color = color_casilla[0]
			fondo_casilla.position = posicion_casilla(posicion)
			fondo_casilla.add_to_group(casilla_juego) #añadiendo la casilla a el grupo de casillas
			add_child(fondo_casilla) #añadiendolo al arbol de escenas
