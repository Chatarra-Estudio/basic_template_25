extends KinematicBody



export var gravity = Vector3.DOWN * 10
export var speed = 45
export var rot_speed = 0.9
onready var escenaontrol = get_node("Control/Virtual joystick")
var velocity = Vector3.ZERO

var pantallaHUDcarga = preload("res://2d-HUD/HUD.tscn")
var pantallaHUD
	
func _physics_process(delta):
	var vy = velocity.y
	velocity = Vector3.ZERO
#	if Input.is_action_pressed("forward"):
	if escenaontrol._output.y < 0:
		velocity += -transform.basis.z * speed * -escenaontrol._output.y
	elif escenaontrol._output.y > 0:
		velocity += transform.basis.z * speed * escenaontrol._output.y
		
	if escenaontrol._output.x > 0:
		rotate_y(-rot_speed * delta * escenaontrol._output.x)
	elif escenaontrol._output.x < 0:
		rotate_y(rot_speed * delta * - escenaontrol._output.x)

	velocity.y = vy
#	print(escenaontrol._output.x)
	velocity += gravity * delta
	velocity = move_and_slide(velocity, Vector3.UP)
	
	if global_transform.origin.y <  -20 and !pantallaHUD:
#		print(global_transform.origin.y)
#		print(!pantallaHUD)
		_go_en_carac()
#		print(get_tree().reload_current_scene())
func _go_en_carac():
	pantallaHUD = pantallaHUDcarga.instance()
	add_child(pantallaHUD)
	pantallaHUD._game_over()
