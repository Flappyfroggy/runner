extends Node2D
var b: bool = true
func _process(_delta):
	if Input.is_action_just_released("start") and b:
		get_tree().change_scene_to_file("res://scene/node_2d.tscn")
		b = false
