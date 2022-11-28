extends Node

func _ready():
	var placap2 = 0
	var placap1 = 0
	pass # Replace with function body.
func _process(_delta):
	$PlacaP1.text = str(variavelGlobal.Player1Score)
	$PlacaP2.text = str(variavelGlobal.Player2Score)
	if (Input.is_action_just_pressed("pausa")):
		if(get_tree().paused== false):
			get_tree().paused = true
			$Control.visible= true
			
		else: 
			get_tree().paused = false
			$Control.visible = false
	
func _on_pause_putton_pressed():
	get_tree().paused = true
	$pause_popup.show()
	
	
func _on_paredeDireita_body_entered(_body):

	$Scoreboard.play()
	variavelGlobal.Player1Score = variavelGlobal.Player1Score +1
	get_tree().change_scene("res://game/atividade piog pong.tscn")
	
		

func _on_paredeEsquerda_body_entered(_body):
		
	$Scoreboard.play()
	variavelGlobal.Player2Score = variavelGlobal.Player2Score +1
	get_tree().change_scene("res://game/atividade piog pong.tscn")
	
	
	
	
