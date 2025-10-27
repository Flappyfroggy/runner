extends CharacterBody2D
var initial_p = Vector2(1.0, 0.0)
var gravity = 2000.0
var speed = 200
var jump = -600
var e = 40
func _physics_process(delta):
	velocity.x = 0
	velocity.x = speed
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jump
	speed += delta * e 
	move_and_slide()
