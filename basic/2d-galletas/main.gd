extends Node2D

#export(PackedScene) var galle
# Declare member variables here. Examples:
# var a = 
var cookie_scene = preload("res://2d-galletas/gallata.tscn")
var galleta 
var cookie_scene_2 = preload("res://2d-galletas/gallata2.tscn")
var galleta_2 
var rng = RandomNumberGenerator.new()
var spawn_area: Vector2 = Vector2(1020, 600)
var cont = 0
var puntos = 0
#@export var cookie_scene: PackedScene # Arrastra aquí la escena de la galleta
export var spawn_time: float = 1.0 # Tiempo entre apariciones

#var scene = preload("res://gallata.tscn")
#

func _ready():
#	cookie_scene = get_node("ga")
#	galleta.set_posistion(Vector2(400, 300))
#	galleta.set_posistion(Vector2(rng.randf_range(0, spawn_area.x),rng.randf_range(0, spawn_area.y)))
	rng.randomize()
#	cookie_scene.posistion = Vector2(rng.randf_range(0, spawn_area.x),rng.randf_range(0, spawn_area.y))
#	_spawn_cookie()
	$Timer.wait_time = spawn_time
#	$Timer.timeout.connect(_spawn_cookie)
	$Timer.start()
	
#
func _spawn_cookie():
	if cookie_scene:
#		var cookie
		galleta = cookie_scene.instance()
		add_child(galleta)
		galleta.set_position(Vector2(rng.randf_range(0, spawn_area.x), rng.randf_range(0, spawn_area.y)))
#		print(galleta.name)
	if cookie_scene_2 and cont >= 5:
		galleta_2 = cookie_scene_2.instance()
		add_child(galleta_2)
		galleta_2.set_position(Vector2(rng.randf_range(0, spawn_area.x), rng.randf_range(0, spawn_area.y)))



func _on_Timer_timeout():
#	print(cookie_scene)
	_spawn_cookie()
	spawn_time = spawn_time - (spawn_time/10)
#	get_node("conta/Label").set_text("¡Come, come!")
	pass # Replace with function body.
