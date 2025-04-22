extends StaticBody2D
var projectile = preload("res://ball.tscn")
func _get_forward() -> Vector2:
	return global_position.direction_to(get_global_mouse_position())
func _update_traj() -> void:
	var velocity : Vector2 =  300 * _get_forward()
	var line_start = global_position
	var line_end: Vector2
	var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
	var drag: float = ProjectSettings.get_setting("physics/2d/default_linear_damp")
	var timestep = 0.02
	var colour =Color.RED
	for i:int in 50:
		velocity.y += gravity * timestep
		line_end = line_start + (velocity * timestep)
		velocity = velocity * clampf(1.0 - drag * timestep, 0 , 1)
		draw_line(line_start, line_end, colour, 5)
		line_start = line_end
	
	
	


func _process(delta):
	var bottom_node = get_node("/root/playtest/bottom") 
	var HUD_node = get_node("HUD") 
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("left click") and bottom_node.is_shooting == false and HUD_node.lives > 0:
		var new_projectile = projectile.instantiate()
		get_parent().add_child(new_projectile)
		HUD_node.lives -= 1
		bottom_node.is_shooting = true
	_update_traj()
		

		
