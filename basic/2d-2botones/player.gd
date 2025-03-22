extends KinematicBody2D
var speed = 400  # Velocidad de movimiento
var velocity = Vector2.ZERO
var vivo = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(_delta):
	if vivo:
		velocity.x = 0  # Reiniciar la velocidad en cada frame
		if(get_parent().get_child(4).get_child(0).pressed):
			velocity.x -= 1
#			print("izquierda")
		if(get_parent().get_child(4).get_child(1).pressed):
			velocity.x += 1
#			print("der")
		velocity = velocity.normalized() * speed
		velocity = move_and_slide(velocity)
		if $".".position.x < 1:
			$".".position.x = 1
		if $".".position.x > 1024:
			$".".position.x = 1024
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
