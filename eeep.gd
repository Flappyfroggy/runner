extends Area2D

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if e.score1:
		e.r = true
		e.gravity = 1000
		e.speed = 0
		e.jump = 0
		e.ee = 0
