extends Node2D

var blue_score = 0
var red_score = 0

func _on_red_goal_body_entered(_body: Node2D) -> void:
	$ball.position = Vector2(640, 360)
	$ball.speed = 400
	blue_score +=1
	$CanvasLayer/blue_score.text = str(blue_score)
	$goal_sfx.play()

func _on_blue_goal_body_entered(_body: Node2D) -> void:
	$ball.position = Vector2(640, 360)
	$ball.speed = 400
	red_score +=1
	$CanvasLayer/red_score.text = str(red_score)
	$goal_sfx.play()

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.is_action_pressed("quit"):
			quit()
			
func quit():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
