extends RigidBody2D
func _ready() -> void:
	launch()
func launch():
	var velocity : Vector2 =  300 * _get_forward()
	apply_central_impulse(velocity)
func _get_forward() -> Vector2:
	var test = global_position.direction_to(get_global_mouse_position())
	return test
