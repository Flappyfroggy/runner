extends Node
var score = 0
var score1: bool = false
var start = 0
var r: bool = false
var final_score = null
func _process(delta):
	if score1:
		var current = Time.get_ticks_msec()
		score = (current - start) /60
		round(score)
	if r and final_score == null:
		final_score = score
