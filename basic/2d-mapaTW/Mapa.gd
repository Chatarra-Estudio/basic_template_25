extends Node2D
var rng = RandomNumberGenerator.new()
var nivel = 1
var resultado 
var resultado_bueno
var resultado_malo
var jugador = 0.50# % de salida 1.00 0.99
var malo1 = 0.50 # % de salida 1er malo 
# Called when the node enters the scene tree for the first time.
func _ready():
#	$"HUD/Label2".set_text("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh Buena batalla")
	$"HUD/Label2".hide()
	pass # Replace with function body.

func _batalla():
	rng.randomize()
	resultado = rng.randi_range(1, 100) 
#	resultado_malo = resultado
#	resultado_bueno = resultado
#	$"malo/Timer".start(1)
#	print($"malo/Timer".start(1))
	$"HUD/Label2".show()
	resultado_bueno = (resultado)*jugador
	resultado_malo = (rng.randi_range(1, 100))*malo1
	
	if (resultado_bueno > resultado_malo):
#		$"HUD/Label".set_text("hhhhhhhhhhWWWWWWWWWWWWWWWWWWWWWW otra bandera W" +str(resultado))
		$"HUD/Label".set_text("Ataque: " +str(resultado_bueno) +" puntos.")
		$"HUD/Label2".set_text("Defensa bandera: " + str(resultado_malo) +" puntos. + Bandera")
		nivel = 1 + nivel
		jugador = jugador + (nivel/10)*2
	else:
		$"HUD/Label".set_text("Ataque: " +str(resultado_bueno) +" puntos.")
		$"HUD/Label2".set_text("Defensa bandera: " + str(resultado_malo) +" puntos.")
		nivel = 0# Game over
# Replace with function body.


func _resultados():
		 # Replace with function body.
	$"HUD/Label2".hide()
	if (nivel == 0) :
		$"HUD/Label".set_text("Ya paso  GAME OVER" + str(resultado_bueno))
	elif (nivel == 2) :
		$"HUD/Label".set_text("A por otra bandera: " + str(resultado_bueno) + " + nivel")
#	elif (nivel == 3) :
	else:
		$"HUD/Label".set_text("Win" +str(resultado_bueno))
