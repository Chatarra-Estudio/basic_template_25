extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var spawn_time: float = 3.0 # Tiempo de muerte
var potenciador = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = spawn_time
	$Timer.start()
	get_parent().get_node("conta/Label2").hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
#	queue_free()
	pass # Replace with function body.


func _on_TextureButton_pressed():
#	print(get_parent().get_node("conta/Label").set_text("¡Come, come!"))
	var con = get_parent().cont + 1
	get_parent().cont = con
	get_parent().get_node("conta/Label").set_text((str(con) + " refrescos"))
	
	get_parent().get_node("conta/Label2").show()
	get_parent().puntos =  get_parent().puntos + potenciador
	get_parent().get_node("conta/Label2").set_text((str(get_parent().puntos) + " puntos"))
	if (name.begins_with("@ga2@") or (name == "ga2")):
		get_parent().get_node("conta/Label2").set_text((str(get_parent().puntos)+" puntos +"+str(potenciador)+" puntikos"))
		get_parent().puntos =  get_parent().puntos + potenciador
		print(name)
	queue_free()
	pass # Replace with function body.
