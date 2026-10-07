extends CharacterBody2D

var salto = 500
var g = 980
@onready var anim = $bird

func _physics_process(delta: float) -> void:
	var pl = anim.is_playing()
	#.is_playin debuelbe un booleado de la animacion
	velocity.y += g * delta
	#se multiplica por delta para que g se sume en cada fotogrma
	if pl == true:
		anim.stop()
		#.stop detiene la animacion
	if Input.is_action_just_pressed("jump"):
		velocity.y = 0
		velocity.y -= salto
		anim.play("default")
		#inicia la animacion con su nombre especifico
	move_and_slide()
	#move_and_slide es un metodo originario de todos los characterbody
	#necesario para moverlos por codigo
	
