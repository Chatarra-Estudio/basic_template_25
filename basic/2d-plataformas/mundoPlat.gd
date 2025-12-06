extends Node2D

# Declare member variables here. Examples:
# var a = 2
onready var PlatformScene = preload("res://2d-plataformas/plataforma.tscn")
var new_platform 
const CAMERA_WIDTH = 100 # Ajusta al tamaño de tu viewport/cámara
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	new_platform = PlatformScene.instance()
	add_child(new_platform)
#	print("kinem" , int(get_node("KinematicBody2D").global_position.x + CAMERA_WIDTH / 2 + 50))
	new_platform.position.x = int(get_node("KinematicBody2D").global_position.x + int(CAMERA_WIDTH / 2 )+ 50)
#	print("meto plataforma")
#	print("meto plataforma postion", new_platform.position.x)
	pass # Replace with function body.
