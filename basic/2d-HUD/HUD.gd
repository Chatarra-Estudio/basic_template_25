extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var tiempoAtras = 50
var temporizador
#var temporiza
var crono 
var go = false
# Crear un nuevo StyleBoxFlat
var estilo_plano = StyleBoxFlat.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	temporizador = $"Timer"
	temporizador.start()
	get_node("goWinTexture/goSprite").hide()
	get_node("goWinTexture/winSprite").hide()
#	temporiza = $"Info/Tempo"
	
	crono =  $"Info/Button"
#	print(crono.has_stylebox("normal")) # tiene estilo?
#	print(crono.get_stylebox("normal")) # que estilo?
	
	pass # Replace with function body.    get_stylebox("normal")

func _on_Timer_timeout():
	tiempoAtras = tiempoAtras -1 
#	print(crono.set_text(str(tiempoAtras) +" s"))
	
#	temporiza.set_text(str(tiempoAtras) +" s")
	
	if tiempoAtras < 1:
		temporizador.stop()
		if !go:
			_win()
#		_game_over()
#		print("gameOver")
	else:
		crono.set_text(str(tiempoAtras) +" s")
		
	pass # Replace with function body.

func _game_over():
#	temporiza.set_text("Game Over")
	go = true
	crono.set_text(" Game Over ")
		# definir rojo para un  StyleBoxFlat
	estilo_plano.bg_color = Color(0.0, 0.0, 0.0) # Rojo  Color(1.0, 0.0, 0.0)
	crono.add_stylebox_override("normal", estilo_plano) #	poner color fondo
#	$Info/Button.scale.x = $Info/Button.scale.x * 1.5 #	escala en x
	crono.hide()
	get_node("goWinTexture/goSprite").show()
#	print(get_node("goWinTexture/goSprite").scale())
#	$TimerGO.start()
	temporizador.stop()
	$TimerGO.start()
	
#	$Info/Button
	print(" Anima gameOver")

func _win():
#	temporiza.set_text("Game Over")
	crono.set_text(" WIN, ¡¡¡¡¡ máquina !!!!! ")
	estilo_plano.bg_color = Color(0.2, 0.9, 0.2) # ver  Color(1.0, 0.0, 0.0)
	crono.add_stylebox_override("normal", estilo_plano) #	poner color fondo
#	$Info/Button.scale.x = $Info/Button.scale.x * 1.5 #	escala en x
	get_node("goWinTexture/winSprite").show()
	$TimerGO.start()
	temporizador.stop()
#	$Info/Button
	print(" Anima Win")

func _on_TimerGO_timeout():
	print(get_tree().reload_current_scene())
	pass # Replace with function body.
