extends Node
var score = 0
var score1: bool = false
var start = 0
var r: bool = false
var final_score = null
var gravity = 2000
var speed = 750
var jump = -1400
var ee = 100
func _process(delta):
	if score1:
		var current = Time.get_ticks_msec()
		score = (current - start) /60
		round(score)
	if r and final_score == null:
		final_score = score
