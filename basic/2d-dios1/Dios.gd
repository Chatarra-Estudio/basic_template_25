extends Node2D

var nivel = 2

var pantalla1carga = preload("res://2d-galletas/mainFD.tscn")
var pantalla1
var pantalla2carga = preload("res://2d-galletas/main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	print("te meto pantalla1")
	get_node("TextureButton").hide()
#	get_node("TextureButton/Sprite").hide()
	pantalla1 = pantalla1carga.instance()
	add_child(pantalla1)
	get_node("Timer").start()
#	get_node("Timer").stop()
	
	pass # Replace with function body.
