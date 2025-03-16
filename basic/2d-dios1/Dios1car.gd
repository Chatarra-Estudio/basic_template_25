extends Node2D

var nivel = 1
#var pantalla1carga = preload("res://2d-dados/main.tscn")
#var pantalla1carga = preload("res://2d-galletas/mainFD.tscn")
var pantalla1carga = preload("res://2d-dados/main1car.tscn")
var pantalla1
var pantalla2carga = preload("res://2d-galletas/mainFD1car.tscn")
var pantalla2
var pantalla3carga = preload("res://3d-car1/main1.tscn")
var pantalla3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	_meterp1()
#	print("te meto pantalla1")
#	get_node("TextureButton").hide()
##	get_node("TextureButton/Sprite").hide()
#	pantalla1 = pantalla1carga.instance()
#	add_child(pantalla1)
#	get_node("Timer").start()
##	get_node("Timer").stop()
	
	pass # Replace with function body.

func _meterp1():
	print("te meto pantalla1")
	get_node("TextureButton").hide()
#	get_node("TextureButton/Sprite").hide()
	pantalla1 = pantalla1carga.instance()
	add_child(pantalla1)
#	get_node("Timer").start()
#	get_node("Timer").stop()

func _meterp2():
	pantalla1.queue_free()
	print("te meto pantalla2")
	get_node("TextureButton").hide()
#	get_node("TextureButton/Sprite").hide()
	pantalla2 = pantalla2carga.instance()
	add_child(pantalla2)

func _meterp3():
	pantalla2.queue_free()
	print("te meto pantalla3")
	get_node("TextureButton").hide()
#	get_node("TextureButton/Sprite").hide()
	pantalla3 = pantalla3carga.instance()
	add_child(pantalla3)
#	get_node("Timer").start()
#	get_node("Timer").stop()
	
