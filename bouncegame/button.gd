extends Button


func _on_button_down() -> void:
		get_tree().reload_current_scene()
