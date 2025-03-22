extends Node2D

var door_scene = preload("res://2d-2botones/obstaculo.tscn")
var doors_per_spawn = 0
var next_door_x_offset = 0  # Distancia entre las siguientes puertas
var random_spawn = true
var posi = 0
var frecuMalos = 2.7#	cada 2.7 segu Malo

var contaW = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	$tpue.start(frecuMalos)
#	$twin.start(1)
#	ptint($tpue.start)
#	$hub/cont/twin.start(1)
#	$hub/cont/Label.set_text(str(contaW) + " Move sideways")
	pass # Replace with function body.

func _on_tpue_timeout():
	doors_per_spawn += 1
	random_spawn = true
	for i in range(doors_per_spawn):
		if not random_spawn:
			next_door_x_offset += 65 #	65 en x , horizontal separación de 
#			print("la n", i, posi)
		spawn_door()
		if i == doors_per_spawn - 1:
#			print("ultima: ", i, ", posi: ", posi,", puertas: ", doors_per_spawn)
			next_door_x_offset = 0
#		print("np: ", i, ", posi: ", posi)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spawn_door():
	var door_instance = door_scene.instance()
	if random_spawn:
		door_instance.position.x = rand_range(1, 1050) # Posición x aleatoria
		posi = door_instance.position.x
		random_spawn = false
#		print("la primera" , door_instance.position.x, next_door_x_offset )
		
	else:
		if posi < 512:
			door_instance.position.x = posi + next_door_x_offset
		else:
			door_instance.position.x = posi - next_door_x_offset
	var main_scene = get_tree().get_root().get_node("2botones")
	main_scene.add_child(door_instance)
	door_instance.set_process(true)
	door_instance.set_physics_process(true)

func _on_twin_timeout():
	print("puerta")
	pass # Replace with function body.
