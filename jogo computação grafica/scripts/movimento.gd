extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 50
const MAXFALLSPEED = 6000
const MAXSPEED = 500
const JUMPFORCE= 1300
const ACCEL = 500


var motion = Vector2()

func _ready():
	pass # Replace with function body.
func _physics_process(_delta):
	motion = move_and_slide(motion,UP)
