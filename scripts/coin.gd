extends Area2D

@onready var score_display: CanvasLayer = %ScoreDisplay

func _on_body_entered(body: Node2D) -> void:
	score_display.add_point()
	queue_free()
