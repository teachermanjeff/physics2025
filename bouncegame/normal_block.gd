extends Node2D
func _on_area_2d_body_entered(body):
	if body.is_in_group("balls"):
		$normalpeghit.play()
		emit_signal("addpoint")
		$Timer.start()
		
		
			
func _on_timer_timeout():
	$pop.play()
	queue_free()
	
	
