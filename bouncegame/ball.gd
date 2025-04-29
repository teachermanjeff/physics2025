extends RigidBody2D
var aim_pos: Vector2
func launch():
	var y_aim = (sqrt(1000000-(globals.x_aim)**2))
	aim_pos = Vector2(globals.x_aim,y_aim)
	var velocity : Vector2 =  300 * _get_forward()
	apply_central_impulse(velocity)
func _get_forward() -> Vector2:
	var test = global_position.direction_to(aim_pos)
	return test
func _ready() -> void:
	launch()
	
	
