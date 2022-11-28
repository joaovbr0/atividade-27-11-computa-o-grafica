extends KinematicBody2D


const UP = Vector2(0,-1)
const GRAVITY = 50
const MAXFALLSPEED = 6000
const MAXSPEED = 500
const JUMPFORCE= 1300
const ACCEL = 500


var motion = Vector2()
var facing_right =true

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion .y = MAXFALLSPEED
		
	if facing_right == true:
		$Sprite.scale.x = 1
	else:
		$Sprite.scale.x = -1
		
	motion.x = clamp(motion.x,-MAXSPEED,MAXSPEED)
	
	if Input.is_action_pressed("right"):
		motion.x += ACCEL
		facing_right =true
		$AnimationPlayer.play("correndo")
	elif Input.is_action_pressed("left"):
		motion.x -= ACCEL
		facing_right =false
		$AnimationPlayer.play("correndo")
	else:
		motion.x = lerp( motion.x,0,0.2)
		$AnimationPlayer.play("Parado")
	
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = - JUMPFORCE

	if !is_on_floor():
	
		if motion.y < 0:
			$AnimationPlayer.play("pular")
		if motion.y > 0:
			$AnimationPlayer.play("cair")
			
	motion = move_and_slide(motion,UP)
