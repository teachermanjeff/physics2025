extends Node2D
func _draw() -> void:
	_update_traj()
func _get_forward() -> Vector2:
	var test = global_position.direction_to(get_global_mouse_position())
	return test
func _update_traj() -> void:
	var velocity : Vector2 =  500 * _get_forward()
	var line_start = global_position
	var line_end: Vector2
	var gravity: float = (ProjectSettings.get_setting("physics/2d/default_gravity"))
	var drag: float = ProjectSettings.get_setting("physics/2d/default_linear_damp")
	var timestep = 0.02
	var colour =Color.WHITE
	for i:int in 70:
		velocity.y += gravity * timestep
		line_end = line_start + (velocity * timestep)
		draw_dashed_line(line_start, line_end, colour, 1)
		line_start = line_end
func _process(delta: float) -> void:
	queue_redraw()
