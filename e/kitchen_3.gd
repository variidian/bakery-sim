extends Node2D


func _on_button_pressed() -> void:
	c.anim()
	a.from_kitchen3 = true
	transition.change_scene("res://e/draggables_guide.tscn", "kitchen_3")
