extends Node2D
var scene

func _on_button_pressed() -> void:
	c.anim()
	if a.from_kitchen:
		scene = "res://e/kitchen.tscn"
		a.from_kitchen = false
	elif a.from_kitchen1:
		scene = "res://e/kitchen_1.tscn"
		a.from_kitchen1 = false
	elif a.from_kitchen2:
		scene = "res://e/kitchen_2.tscn"
		a.from_kitchen2 = false
	transition.change_scene( scene, "draggables_guide")
