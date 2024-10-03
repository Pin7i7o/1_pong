extends CharacterBody2D

#enum OP_TYPE {
	#SELF,
	#AI,
#}

var speed = 600
var ball

func _ready() -> void:
	ball = get_parent().find_child("ball")

func _physics_process(delta: float) -> void:
	move_and_collide(Vector2(0, get_opp_direction()) * speed * delta)
	
	#var paddle_velocity = Vector2.ZERO
	#
	#if Input.is_action_pressed("arrowUp"):
		#paddle_velocity.y -= SPEED
	#if Input.is_action_pressed("arrowDown"):
		#paddle_velocity.y += SPEED
	#
	#move_and_collide(paddle_velocity * delta)
	
func get_opp_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
