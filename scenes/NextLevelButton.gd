extends Button

func _on_pressed():
	var next_level = "res://scenes/Level2.tscn"
	get_tree().change_scene_to_file(next_level)
