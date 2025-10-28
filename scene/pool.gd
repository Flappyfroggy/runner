extends Node2D
@export var p_1: Vector2 = Vector2(1200,220)
@export var p_2: Vector2 = Vector2(9000,220)
@onready var pool: Resource = preload("res://scene/pool.tscn")
var existing_positions: Array = []
func get_random_point_inside(p1: Vector2, p2: Vector2) -> Vector2:
	var x_value: float = randf_range(p1.x, p2.x)
	var y_value: float = randf_range(p1.y, p2.y)
	var rando_point_inside: Vector2 = Vector2(x_value, y_value)
	return (rando_point_inside)
func is_position_far_enough(pos: Vector2, min_distance: float = 650) -> bool:
	for existing_pos in existing_positions:
		if existing_pos.distance_to(pos) < min_distance:
			return false
	return true
func spawn():
	var pool_instance: Node = pool.instantiate()
	add_child(pool_instance)
	var attempts = 0
	var max_attempts = 10
	while attempts < max_attempts:
		var pos = get_random_point_inside(p_1, p_2)
		if is_position_far_enough(pos):
			pool_instance.global_position = pos
			existing_positions.append(pos)
			return  
		attempts += 1
	pool_instance.queue_free()
func _ready():
	for i in range(9):
		spawn()
