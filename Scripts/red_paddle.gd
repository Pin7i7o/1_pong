extends CharacterBody2D

const SPEED = 600

func _physics_process(delta: float) -> void:
	var paddle_velocity = Vector2.ZERO
	
	if Input.is_action_pressed("arrowUp"):
		paddle_velocity.y -= SPEED
	if Input.is_action_pressed("arrowDown"):
		paddle_velocity.y += SPEED
	
	move_and_collide(paddle_velocity * delta)
