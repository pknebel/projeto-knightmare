extends Area2D # portal 1

@export var destination_position: Vector2 = Vector2(2450, 250)

func _on_body_entered(body):
	print("Entrou no portal:", body.name)
	body.global_position = destination_position
