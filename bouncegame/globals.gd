extends Node
var x_aim = 0
var score = 0
func _process(_delta: float) -> void:
	if Input.is_action_pressed("left"):
		if x_aim > -1000:
			x_aim -= 10
	if Input.is_action_pressed("right"):
		if x_aim < 1000:
			x_aim += 10
