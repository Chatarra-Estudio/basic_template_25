extends Control


# Declare member variables here. Examples:
onready var PREproy =  preload("res://3d-cara-dispa/proyectilArea.tscn")
var proyectil

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_TextureButton_pressed():
#	print(get_parent().get_parent().global_transform.origin)
#	print(get_parent().get_parent().global_transform.origin + get_parent().get_parent().global_transform.basis.z * -1.0)
	proyectil = PREproy.instance()
#	print(get_tree().current_scene)
	get_tree().current_scene.add_child(proyectil)
	var playerDir = get_parent().get_parent()
#	var offset = (-playerDir.global_transform.basis.z * 1.5)
	proyectil.global_transform = playerDir.get_child(3).get_child(0).global_transform 
##	proyectil.global_transform = 
#	print(playerDir.get_child(3).get_child(0).global_transform)
#	print(playerDir.global_transform)
	
#	proyectil.global_transform = playerDir.get_child(3).global_transform
	
	pass # Replace with function body.
