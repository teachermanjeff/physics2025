extends Area2D
var is_shooting = false
func _on_body_entered(body: Node2D) -> void:
	is_shooting = false
