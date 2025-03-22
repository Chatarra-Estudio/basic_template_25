extends Node2D

var dragging = false
var start_pos = Vector2()
var swipe_vector = Vector2()

var bandera_scr


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AudioStreamPlayer2D").play()
	get_node("Fondo/alta/Timer").start(0.4)
#	get_node("AudioStreamPlayer2D")
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	get_node("AudioStreamPlayer2D").pitch_scale =1
#	pass
func conelvector():
	get_node("AudioStreamPlayer2D").pitch_scale = get_node("AudioStreamPlayer2D").pitch_scale * (1.05)
	get_node("AudioStreamPlayer2D/TimerScra").start(0.2)
	get_node("Fondo/Plato").rotation = -0.31
#	print("Vector de deslizamienKKto del ratón:", swipe_vector.normalized().y)
#	if swipe_vector.normalized().y < 0:
##		print("FFF")
#		get_node("AudioStreamPlayer2D").pitch_scale = get_node("AudioStreamPlayer2D").pitch_scale * (1.05)
#		get_node("AudioStreamPlayer2D/TimerScra").start(0.2)
#	get_node("AudioStreamPlayer2D").pitch_scale = 

func _on_TextureButton_pressed():
#	get_node("AudioStreamPlayer2D").play()
#	print(get_child(0).pressed, "  boton preion")
	pass # Replace with function body.
			
func _unhandled_input(event):
#	print(event, "  evento2")
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT:
			dragging = true
			start_pos = event.position
#			print(start_pos, "  raton prosicion")
		elif not event.pressed and event.button_index == BUTTON_LEFT:
			dragging = false
			conelvector()
	elif event is InputEventMouseMotion and dragging:
		swipe_vector = event.position - start_pos
#		print("esto pa derrape:", swipe_vector)
		conelvector()
	
		# Detección de deslizamiento táctil
	if event is InputEventScreenTouch:
		if event.pressed:
			dragging = true
			start_pos = event.position
		else:
			dragging = false
			conelvector()
	elif event is InputEventScreenDrag and dragging:
			swipe_vector = event.position - start_pos
			print("esto pa derrape:", swipe_vector)
			conelvector()
		
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()


func _on_TimerScra_timeout():
	get_node("AudioStreamPlayer2D").pitch_scale =1
	get_node("Fondo/Plato").rotation = 0
	pass # Replace with function body.


func _on_Timer_timeout():
	if get_node("Fondo/alta").visible:
		get_node("Fondo/alta").hide()
		get_node("Fondo/alta/Timer").start(0.4)
	else:
		get_node("Fondo/alta").show()
		get_node("Fondo/alta/Timer").start(0.6)
#	print(get_node("Fondo/alta").visible)
	
	pass # Replace with function body.
