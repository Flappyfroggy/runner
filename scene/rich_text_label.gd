extends Node2D
@onready var label = get_node("label")
func _process(_delta):
	label.text = "Score: " + str(e.score) + "!"
	if e.r:
		label.text = "Final Score: " + str(e.final_score) + "!"
