extends Node2D


var sceneIz_carga = preload("res://2d-2botones/mainFD2b.tscn")
var sceneIz

var sceneDe_carga = preload("res://3d-car1/main1.tscn")
var sceneDe

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButtonIz_pressed():
	get_node("TextureButtonDe").queue_free()
	get_node("TextureButtonIz").queue_free()
	sceneIz = sceneIz_carga.instance()
	add_child(sceneIz)
	pass # Replace with function body.


func _on_TextureButtonDe_pressed():
	get_node("TextureButtonDe").queue_free()
	get_node("TextureButtonIz").queue_free()
	sceneDe = sceneDe_carga.instance()
	add_child(sceneDe)
	pass # Replace with function body.
