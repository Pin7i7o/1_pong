extends CharacterBody2D

enum OP_TYPE {
	SELF = 0,
	AI = 1,
}

var speed = 600
var ball

func _ready() -> void:
	ball = get_parent().find_child("ball")

func _physics_process(delta: float) -> void:
	match GlobalVars.gamemode:
		OP_TYPE.SELF:
			var paddle_velocity = Vector2.ZERO
	
			if Input.is_action_pressed("arrowUp"):
				paddle_velocity.y -= speed
			if Input.is_action_pressed("arrowDown"):
				paddle_velocity.y += speed
			
			move_and_collide(paddle_velocity * delta)
	
		OP_TYPE.AI:
			move_and_collide(Vector2(0, get_opp_direction()) * speed * delta)
	
func get_opp_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
