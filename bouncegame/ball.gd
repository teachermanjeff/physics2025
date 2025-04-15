extends RigidBody2D
var vert = 0
var horz = 0
var deltax = 0
var deltay = 0
var angle = 0
func _ready() -> void:
	deltax = position.x - get_global_mouse_position().x
	deltay = position.y - get_global_mouse_position().y
	angle  = atan2(deltay,deltax)
	vert = -(cos(angle)*15)
	horz = -(sin(angle)*15)
	apply_central_impulse(Vector2(vert,horz) * 20)
