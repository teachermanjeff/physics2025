extends StaticBody2D
var projectile = preload("res://ball.tscn")
func _process(delta):
	var bottom_node = get_node("/root/playtest/bottom") 
	var HUD_node = get_node("HUD") 
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("left click") and bottom_node.is_shooting == false and HUD_node.lives > 0:
		$cannonsound.play()
		var new_projectile = projectile.instantiate()
		get_parent().add_child(new_projectile)
		HUD_node.lives -= 1
		bottom_node.is_shooting = true
		

		
