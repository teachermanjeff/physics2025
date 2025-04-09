extends StaticBody2D
var projectile = preload("res://ball.tscn")
func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("left click"):
		var new_projectile = projectile.instantiate()
		get_parent().add_child(new_projectile)
