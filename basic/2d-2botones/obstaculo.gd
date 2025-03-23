extends Node2D

var speed = 100  # Velocidad de descenso

func _physics_process(delta):
	position.y += speed * delta  # Mover la puerta hacia abajo
	if position.y > get_viewport_rect().size.y:
		queue_free()  
	
		
func _on_Area2D_body_entered(_body):
	get_parent().gameO()
#	print(get_parent().escenaHudGO)
	print("g o")
