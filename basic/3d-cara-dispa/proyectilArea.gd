extends Area

export var speed = 40.0
var direction = Vector3.FORWARD
func _ready():
#	print(": ",get_parent().get_child(0))
#	print("dire: ",direction)
	direction = -get_parent().get_child(0).global_transform.basis.z
	get_node("Timer").start(3)
	
func _physics_process(delta):
	translation += direction * speed * delta
#func _on_body_entered(_body):
#	queue_free()  # destruye el proyectil al impactar

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(body):
#	print(body.name)
#	print(body.name.begins_with("EnemigoD"))
#	print(body.get_parent().get_child_count())
	if body.name.begins_with("EnemigoD"):
		body.queue_free()
		if body.get_parent().get_child_count() == 1:
			print("win", get_parent().get_child(0)._win_en_carac())
	queue_free()
	pass # Replace with function body.

func _on_Timer_timeout():
#	print("esto")
	queue_free()
	pass # Replace with function body.
