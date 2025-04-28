extends RigidBody2D
var aim_pos: Vector2
var x_aim = 0
var y_aim: float
func launch():
	var velocity : Vector2 =  300 * _get_forward()
	apply_central_impulse(velocity)
func _get_forward() -> Vector2:
	var test = global_position.direction_to(aim_pos)
	return test
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		if x_aim > -1000:
			x_aim -= 10
	if Input.is_action_pressed("right"):
		if x_aim < 1000:
			x_aim += 10
	y_aim = (sqrt(1000000-(x_aim)**2))
	aim_pos = Vector2(x_aim,y_aim)
	print(aim_pos)
func _ready() -> void:
	launch()
	
	
