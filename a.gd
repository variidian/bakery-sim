extends Node
var from_kitchen := false
var from_kitchen1 := false
var from_kitchen2 := false
func to_kitchen_from_front():
	c.anim()
	transition.change_scene("res://e/kitchen.tscn", "get_order")
