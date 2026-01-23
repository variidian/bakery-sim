extends Sprite2D
var dragging = false
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position()

func _on_button_button_down() -> void:
	dragging = true
func _on_button_button_up() -> void:
	dragging = false
