extends Node2D

var ball

func _on_red_goal_body_entered(body: Node2D) -> void:
	$ball.position = Vector2(640, 360)
	$ball.speed = 400

func _on_blue_goal_body_entered(body: Node2D) -> void:
	$ball.position = Vector2(640, 360)
	$ball.speed = 400
