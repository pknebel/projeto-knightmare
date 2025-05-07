extends Area2D # portal 1

@export var destination_position: Vector2 = Vector2(2450, 230)

func _ready():
	print("Portal carregado")


func _on_portal_body_entered(body: Node2D) -> void:
	var _game_manager = get_node("/root/GameManager")
	if _game_manager.score >= 12:
		print("Entrou no portal com moedas suficientes!")
		body.global_position = destination_position
