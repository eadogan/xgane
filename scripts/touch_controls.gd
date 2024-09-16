extends CanvasLayer

@onready var btn_right: TouchScreenButton = $btn_right
@onready var btn_left: TouchScreenButton = $btn_left
@onready var btn_jump: TouchScreenButton = $btn_jump



func _on_btn_right_pressed() -> void:
	btn_right.modulate.a = 0.5


func _on_btn_right_released() -> void:
	btn_right.modulate.a = 1.0


func _on_btn_left_pressed() -> void:
	btn_left.modulate.a = 0.5


func _on_btn_left_released() -> void:
	btn_left.modulate.a = 1.0
	

func _on_btn_jump_pressed() -> void:
	btn_jump.modulate.a = 0.5
	

func _on_btn_jump_released() -> void:
	btn_jump.modulate.a = 1.0
