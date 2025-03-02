extends Node2D


# Declare member variables here. Examples: 
var jugador = 2
var contrincante = "text"
var resultado
var rng = RandomNumberGenerator.new()

#mover el boton
var posiAnte 

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("jugador").set_text("Cast your spell")
#	get_node("jugador").set_text("Lanza tu hechizo. Cast your spell")
#	print(get_node("jugador").set_text("Tira los dados"))
#	print(get_node("contrincante").hide())
	get_node("contrincante").hide()
	get_node("resultado").hide()
	rng.randomize()
	get_parent().get_node("Tab/VideoPlayer").hide()
#	get_parent().get_node("Tab/VideoPlayer").play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_TextureButton_pressed():
	_tirar_dado()
	pass # Replace with function body.

func _tirar_dado():
	jugador = rng.randi_range(1, 6)
	contrincante = rng.randi_range(1, 6)
	resultado = jugador - contrincante
#	jugador = randi()the wizard's spell has 5 points of strength
	get_node("jugador").set_text("Your spell has " + str(jugador) + " strength point.")
	get_node("contrincante").set_text("The wizard's spell has " + str(contrincante) + " strength point." )
	get_node("contrincante").show()
	get_node("resultado").hide()
	if (resultado > 0):
		get_node("resultado").set_text("Spellcasting " + str(resultado) + ": You Win")
		get_node("resultado").show()
#		funcion "anular" boton 
#		get_parent().get_node("TextureButton").set_position(Vector2(3000,3000))
		posiAnte =get_parent().get_node("TextureButton").get_position()
		get_parent().get_node("TextureButton").set_position(Vector2(3000,3000))
		get_parent().get_node("TextureButton/Timer").wait_time =  2.2
		get_parent().get_node("TextureButton/Timer").start()
		get_parent().get_node("Tab/VideoPlayer").show()
		get_parent().get_node("Tab/VideoPlayer").play()
		
#		print(get_parent().get_node("TextureButton/Timer"))
#		print(posiAnte)
	else:
		get_node("resultado").set_text("Spellcasting " + str(resultado) + ": You LOSE")
		get_node("resultado").show()


func _on_Timer_timeout():
	get_parent().get_node("TextureButton").set_position(Vector2(posiAnte))
	get_parent().get_node("Tab/VideoPlayer").hide()
#	get_node("resultado").hide()
	pass # Replace with function body.
