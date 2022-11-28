extends KinematicBody2D

var cont = 0
var ball
func _ready():
	ball = get_parent().find_node("Bolas")
	
func _physics_process(_delta):
	var motion = Vector2()
	var moved = false 
	
	if  Input.is_action_pressed("player 2 up"):
		motion.y -= 5
		moved = true 
	if  Input.is_action_pressed("player 2 down"):
		motion.y += 5
		moved = true 

	
	move_and_collide(motion)
	
	
