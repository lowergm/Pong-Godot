extends RigidBody2D

var direcao = 1
var speed = 300

func _ready() -> void:
	linear_velocity.x = speed * direcao

func _physics_process(delta: float) -> void:
	linear_velocity.x = speed * direcao


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("EnemyOrPlayer"):
		direcao *= -1


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	get_tree().reload_current_scene()
 
