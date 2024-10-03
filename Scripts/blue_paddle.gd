extends CharacterBody2D

const SPEED = 10

func _physics_process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("keyUp"):
		velocity.y -= SPEED
	if Input.is_action_pressed("keyDown"):
		velocity.y += SPEED
	
	move_and_collide(velocity)
