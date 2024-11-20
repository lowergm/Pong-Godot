extends RigidBody2D

var movimento = Vector2.ZERO
var speed = 400

func _physics_process(delta: float) -> void:
	linear_velocity = movimento * speed

func _on_btn_subir_pressed() -> void:
	print("Subindo")
	movimento = Vector2.UP


func _on_btn_descer_pressed() -> void:
	print("Descendo")
	movimento = Vector2.DOWN
