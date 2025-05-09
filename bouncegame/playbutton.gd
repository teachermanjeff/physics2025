extends Button


func _on_pressed():
	get_tree().change_scene_to_file("res://playtest.tscn")




func _on_playbutton_2_pressed() -> void:
	get_tree().change_scene_to_file("res://level1.tscn")


func _on_playbutton_3_pressed() -> void:
	get_tree().change_scene_to_file("res://level_2.tscn")
