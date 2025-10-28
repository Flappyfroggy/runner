extends Node2D
func _process(_delta):
	if Input.is_action_pressed("start"):
		get_tree().change_scene_to_file("res://scene/node_2d.tscn")
