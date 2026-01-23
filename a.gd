extends Node
func to_kitchen_from_front():
	c.anim()
	transition.change_scene("res://e/kitchen.tscn", "get_order")
