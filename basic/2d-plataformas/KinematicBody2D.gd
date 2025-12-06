extends KinematicBody2D

const GRAVITY = 800
const JUMP_FORCE = -400
const MOVE_SPEED = 200 # Velocidad horizontal constante
var velocity = Vector2.ZERO
var move

var pantallaHUDcarga = preload("res://2d-HUD/HUD.tscn")
var pantallaHUD
var score = 0

#var jump_requested = false

func _physics_process(delta):
	# 1. Aplicar Gravedad
	velocity.y += GRAVITY * delta
	# 2. Movimiento Horizontal (constante)
	velocity.x = MOVE_SPEED
	
	# 3. Salto (Mecánica Flappy)
#	if Input.is_action_just_pressed("ui_accept"): # Mapea "ui_accept" a ESPACIO/Clic
#		saltar()
		# 4. Mover y Colisionar
#	print(position.y)

	if position.y > 800 or position.y < -200:
#		print("GameOver")
		gameOVER()
#	puntuación
	score += delta * 10
	get_node("CollisionShape2D/Camera2D/Label").text = "Tiempo: " + str(int(score))
	
	if score > 300:
		Win()
#	print("antes", is_on_floor())
	move = move_and_slide(velocity,Vector2.UP)
#	print("despues", is_on_floor())
	

func _on_TextureButton_pressed():
	if is_on_floor():
		saltar()
#	print(is_on_floor())
#	saltar()
#	print("saltar")
	pass # Replace with function body.

func saltar():
	velocity.y = JUMP_FORCE
	
func gameOVER() :
	print("GameOver")
#	move = get_tree().reload_current_scene()
	pantallaHUD = pantallaHUDcarga.instance()
#	print(get_node("Camera"))
	add_child(pantallaHUD)
#	print(pantallaHUD.position.x)
	pantallaHUD.position.x = -300
	pantallaHUD.position.y = -400
#	get_node("KinematicBody2D").global_position.x 
#	get_node("Camera").add_child(pantallaHUD)
	pantallaHUD._game_over()

func Win() :
	print("Win")
#	move = get_tree().reload_current_scene()
	pantallaHUD = pantallaHUDcarga.instance()
#	print(get_node("Camera"))
	add_child(pantallaHUD)
#	print(pantallaHUD.position.x)
	pantallaHUD.position.x = -300
	pantallaHUD.position.y = -400
#	get_node("KinematicBody2D").global_position.x 
#	get_node("Camera").add_child(pantallaHUD)
	pantallaHUD._win()