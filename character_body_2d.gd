extends CharacterBody2D
var initial_p = Vector2(1.0, 0.0)
var gravity = 2000.0
var speed = 350
var jump = -1300
var e = 50
func _physics_process(delta):
	velocity.x = 0
	velocity.x = speed
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump
	speed += delta * e 
	if Input.is_action_pressed("down"):
		velocity.y = 1000
	move_and_slide()
func _ready():
	global_position = initial_p
	print (position)
