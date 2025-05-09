extends StaticBody2D
@onready var bottom_node = $"../bottom"
var y_aim: int
var aim_pos: Vector2


var projectile = preload("res://ball.tscn")
func _process(_delta):
	var HUD_node = get_node("HUD")
	y_aim = (sqrt(1000000-(globals.x_aim)**2))
	aim_pos = Vector2(globals.x_aim,y_aim) 
	look_at(aim_pos)
	if Input.is_action_just_pressed("shoot") and bottom_node.is_shooting == false and HUD_node.lives > 0: 
		$cannonsound.play()
		var new_projectile = projectile.instantiate()
		get_parent().add_child(new_projectile)
		HUD_node.lives -= 1
		bottom_node.is_shooting = true
	
		

		
