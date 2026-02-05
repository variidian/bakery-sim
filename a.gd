extends Node
var from_kitchen := false
var from_kitchen1 := false
var from_kitchen2 := false
var 	from_kitchen3 := false
func to_kitchen_from_front():
	c.anim()
	transition.change_scene("res://e/kitchen.tscn", "get_order")
func to_get_order_from_croissant():
	c.anim()
	transition.change_scene("res://e/get_order.tscn", "hand_croissant")
func to_get_order_from_start():
	c.anim()
	transition.change_scene("res://e/get_order.tscn", "start") #make sure the root scene of wherever its coming from is start
