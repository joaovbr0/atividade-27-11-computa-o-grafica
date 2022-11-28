extends Node

var placar1=0 
var placar2= 0

func _ready():
	
	pass 
func _physics_process(delta):
	$placa1.text = str(placar1)
	$placa2.text = str(placar2)
	if  Input.is_action_pressed("mudarposição"):
		placar1= placar1+1
	pass

func _on_esquerda_body_entered(body):
	placar2 = placar2 +1
	print("bateu")
	pass # Replace with function body.


func _on_direita_body_entered(body):
	placar2 = placar2 +1
	print("bateu")
	pass # Replace with function body.


func _on_baixo_body_entered(body):
	placar2 = placar2 +1
	print("bateu")
	pass # Replace with function body.


func _on_cima_body_entered(body):
	placar2 = placar2 +1
	
	pass # Replace with function body.
