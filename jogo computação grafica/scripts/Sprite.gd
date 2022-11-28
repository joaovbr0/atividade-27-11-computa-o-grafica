extends Sprite
var motion = Vector2()

func _ready():
	pass # Replace with function body.
func _physics_process(_delta):
	position.x += 20


func _on_esquerda2_body_entered(body):
	position.x -= 20
	pass # Replace with function body.
	
	

func _on_direita2_body_entered(body):
	position.x -= 20
	print ("houve uma colisao ")
	pass # Replace with function body.
	
