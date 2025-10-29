extends Node
var score = 0
var time = 0
func _process(delta):
	time = Time.get_ticks_msec()
	score = time / 40
	round(score)
