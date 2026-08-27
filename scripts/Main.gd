extends Node2D

var score: int = 0
onready var score_label: Label = $CanvasLayer/HUD/ScoreLabel

func _ready() -> void:
	_update_score_label()
	if has_node("Stickman"):
		$Stickman.connect("hit", Callable(self, "_on_stickman_hit"))

func _on_stickman_hit(points: int) -> void:
	score += points
	_update_score_label()

func _update_score_label() -> void:
	score_label.text = "Puntos: %d" % score
