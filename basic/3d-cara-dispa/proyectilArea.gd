extends Area

export var speed = 40.0
var direction = Vector3.FORWARD
func _ready():
	print(": ",get_parent().get_child(0))
	print("dire: ",direction)
	direction = -get_parent().get_child(0).global_transform.basis.z
	print("dire2: ",direction)

func _physics_process(delta):
	translation += direction * speed * delta

func _on_body_entered(_body):
	queue_free()  # destruye el proyectil al impactar

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
