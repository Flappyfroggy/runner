extends CharacterBody2D
var initial_p = Vector2(1.0, 0.0)
var gravity = 2000
var speed = 600
var jump = -1400
var ee = 50
var b: bool = true
func _physics_process(delta):
	if Input.is_action_just_released("start2") and b:
		velocity.x = speed
		b = false
		position = initial_p
		e.score1 = true
		e.start = Time.get_ticks_msec()
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump
	speed += delta * ee
	if Input.is_action_pressed("down"):
		velocity.y = 1600
	move_and_slide()
func _ready():
	global_position = initial_p
	print (position)
