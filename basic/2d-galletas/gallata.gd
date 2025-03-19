extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var spawn_time: float = 0.3 # Tiempo de muerte
var potenciador = 10
var rng = RandomNumberGenerator.new()
export var explosion_count: int = 12  # Número de explosiones (sprites)
export var explosion_speed: float = 200  #Radio de explosión
#var direction = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = spawn_time
	rng.randomize()
#	$Timer.start()
	get_parent().get_node("conta/Label2").hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_TextureButton_pressed():
#	print(get_parent().get_node("conta/Label").set_text("¡Come, come!"))
	var con = get_parent().cont + 1
	get_parent().cont = con
	get_parent().get_node("conta/Label").set_text((str(con) + " UFOs"))
	
	get_parent().get_node("conta/Label2").show()
	get_parent().puntos =  get_parent().puntos + potenciador
	get_parent().get_node("conta/Label2").set_text((str(get_parent().puntos) + " puntos"))
	if (name.begins_with("@ga2@") or (name == "ga2")):
		get_parent().get_node("conta/Label2").set_text((str(get_parent().puntos)+" puntos +"+str(potenciador)+" puntikos"))
		get_parent().puntos =  get_parent().puntos + potenciador
		print(name)
	$Timer.start()
#	print(get_parent())
	rng.randomize()
#	rotation = 3.14 #	= a 180º ==> 2 *pi 
	rotation = rng.randf_range(0, 6.28)
	$TextureButton.hide()
	explode()
	pass # Replace with function body.

func explode():
#	var original_position = position  # Guarda la posición original del sprite
	print($Sprite2)
	for _i in range(explosion_count):
		var new_sprite = Sprite.new()  # Crea un nuevo sprite
		new_sprite.texture = $Sprite2.texture 
		add_child(new_sprite)
#		rng.randomize()
#		rng.randf_range(0, 6.28)
		var angle = randf() * 2 * PI
		
#		new_sprite.rotation = angle
#		new_sprite.position.x = angle*40*randf() + new_sprite.position.x
		var direction = Vector2(cos(angle), sin(angle))  # Calcula la dirección basada en el ángulo
#		print($Sprite2,new_sprite, "      " ,angle)
		new_sprite.position = direction * explosion_speed * randf()
		new_sprite.rotation = angle
		new_sprite.modulate.a = randf() #0.5
		var miScala =  randf()
		new_sprite.scale = Vector2(miScala, miScala)
#		print(direction * explosion_speed )




#	print(get_parent())
