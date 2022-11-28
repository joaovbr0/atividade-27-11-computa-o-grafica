extends KinematicBody2D

var speed = 70
var velocity = Vector2.ZERO
var rng = RandomNumberGenerator.new()
func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8] [randi() % 2]
	
func _physics_process(delta):
	rng.randomize()
	var aleatorio = rng.randf_range(-1.0, 4.0)
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.normal)
	if  Input.is_action_pressed("mudarposição"):
		velocity.y= aleatorio
		velocity.x= aleatorio
		
		
