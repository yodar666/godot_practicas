extends Node
#script global
#nota pta contraer bloques de codigo

#region <-- abre una region de codigo para contraerla  (fb_variables)
var bird_d:bool = false
var fb_points:int = 0
var t_fb_p: int = 0
#endregion


func _ready() -> void:
	t_fb_p = fb_points
