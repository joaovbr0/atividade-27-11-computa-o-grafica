extends KinematicBody2D

const mov = Vector2(0,-1)

var motion = Vector2()

func _ready():
	pass # Replace with function body.
func _physics_process(_delta):
	pass
	
	motion.x += 50
	motion = move_and_slide(motion,mov) 

