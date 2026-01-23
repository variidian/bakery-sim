extends Node2D


func _on_button_pressed() -> void:
	c.anim()
	transition.change_scene("res://e/kitchen.tscn", "draggables_guide")
