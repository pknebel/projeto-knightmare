extends Area2D

@onready var timer: Timer = $Timer
@export var destination_position: Vector2 = Vector2(2450, 230)

func _on_body_entered(body):
	print("You died!")
	var _game_manager = get_node("/root/GameManager")
	if _game_manager.score > 12:
		body.global_position = destination_position
	else:
		Engine.time_scale = 0.5
		body.get_node("CollisionShape2D").queue_free()
		timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
