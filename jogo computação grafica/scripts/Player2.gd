extends KinematicBody2D



func _ready():
	
	pass
	
func _physics_process(delta):
	var motion = Vector2()
	var moved = false 
	
	if  Input.is_action_pressed("player 2 up"):
		motion.y -= 5
		moved = true 
	if  Input.is_action_pressed("player 2 down"):
		motion.y += 5
		moved = true 
	
	move_and_collide(motion)
	pass
	
func score():
	variavelGlobal.Player2Score+=variavelGlobal.Player2Score+1
