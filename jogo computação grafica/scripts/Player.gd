extends KinematicBody2D




# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _physics_process(_delta):
	var motion = Vector2()
	var moved = false 
	
	if  Input.is_action_pressed("up"):
		motion.y -= 5
		moved = true 
	if  Input.is_action_pressed("down"):
		motion.y += 5
		moved = true 
		
	
	move_and_collide(motion)

	
	


