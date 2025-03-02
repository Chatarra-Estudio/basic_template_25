extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var spawn_time: float = 3.0 # Tiempo de muerte


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = spawn_time
	$Timer.start()
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
	get_parent().get_node("conta/Label").set_text(str(con))
	queue_free()
	pass # Replace with function body.
