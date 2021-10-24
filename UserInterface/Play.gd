
extends Button


export(String, FILE) var next_scene_path: = "res://Levels/main.tscn"

func _on_button_up():
	get_tree().change_scene(next_scene_path)
