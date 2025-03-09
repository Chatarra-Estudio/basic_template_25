extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Sprite2".hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_parent().get_parent()._batalla()
	$"Timer".start(1)
	$"TextureButton".hide()
#	$"Sprite2".show()
#	$"TextureButton".queue_free()
#	print("tambien"+ get_parent().name)
#	get_parent().batalla()
	pass # Replace with function body.




func _on_Timer_timeout():
	get_parent().get_parent().get_node("HUD/Label2").hide()
#	get_parent().get_node("HUD/Label2").set_text("hhh")
	get_parent().get_parent()._resultados()
	if get_parent().get_parent().nivel == 0:
		$"TimerR".start(2)
		print("reincio Game Over")
	elif get_parent().get_parent().nivel == 2:
		$"Sprite2".show()
	elif get_parent().get_parent().nivel == 3:
		$"TimerR".start(1)
		$"Sprite2".show()
		print("reincio W")
#	func _on_Timer_timeout():
#		 # Replace with function body.
##	$"HUD/Label2".hide()
#	if (get_parent().nivel == 0) :
#		get_parent().get_node("HUD/Label").set_text("Ya paso  GAME OVER" + str(get_parent().resultado_bueno))
#		get_parent().get_node("HUD/Label")
#		$"HUD/Label".set_text("Ya paso  GAME OVER" + str(resultado_bueno))
#	elif (nivel == 2) :
#		$"HUD/Label".set_text("A por otra bandera: " + str(resultado_bueno) + " + nivel")
#	else:
#		$"HUD/Label".set_text("Win" +str(resultado_bueno))
pass # Replace with function body.


func _on_TimerR_timeout():
	print(get_tree().reload_current_scene())
	pass # Replace with function body.
