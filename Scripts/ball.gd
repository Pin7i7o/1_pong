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
		
		if collider_name == "blue_paddle" || collider_name == "red_paddle": 
			speed+= 20
			$paddle_collision_sfx.play()
		else: $collision_sfx.play()
		
