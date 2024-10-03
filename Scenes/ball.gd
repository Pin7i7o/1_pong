extends CharacterBody2D

var speed = 400
var ball_velocity = Vector2.ZERO

func _ready() -> void:
	randomize()
	ball_velocity.x -= [-1, 1][randi() % 2]
	ball_velocity.y -= [-0.7, 0.7][randi() % 2]

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(ball_velocity * speed * delta)
	
	if collision:
		ball_velocity = ball_velocity.bounce(collision.get_normal())
		
		var collider_name = collision.get_collider().name
		
		match collider_name:
			"red_paddle", "blue_paddle" :
				speed += 50
			"right_bdry", "left_bdry" :
				speed = 0
				
		
		
		
