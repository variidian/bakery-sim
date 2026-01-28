extends Node2D
@onready var croissant = $croissant

func _on_button_pressed() -> void:
	c.anim()
	a.from_kitchen3 = true
	transition.change_scene("res://e/draggables_guide.tscn", "kitchen_3")


func _on_area_2d_area_entered(area: Area2D) -> void:
	c.anim()
	transition.change_scene("res://e/hand_croissant.tscn", "kitchen_3")
