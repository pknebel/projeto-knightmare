extends Node

var score = 12

@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "Você coletou " + str(score - 12) + "/12 moedas."
	
	if score >= 108 + 12:
		get_tree().reload_current_scene()
