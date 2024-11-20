extends RigidBody2D

func _physics_process(delta: float) -> void:
	var ball_position_y = get_parent().get_node("Bola").position.y
	position.y = ball_position_y
