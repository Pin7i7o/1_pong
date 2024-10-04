extends Control

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.is_action_pressed("start"):
			start()
			
func start():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on: GlobalVars.gamemode = 1
	else: GlobalVars.gamemode = 0
	print(GlobalVars.gamemode)
