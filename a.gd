extends Node
@onready var diallogue = preload("res://balloon.tscn")
@onready var pause = preload("res://control.tscn")
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
	transition.change_scene("res://e/get_order.tscn", "start")
func to_get_order_from_date():
	c.anim()
	transition.change_scene("res://e/get_order.tscn", "date")
func to_date_from_croissant():
	c.anim()
	transition.change_scene("res://date.tscn", "hand_croissant")
func to_marry_from_date():
	c.anim()
	transition.change_scene("res://marry.tscn", "date")
func _process(float):
	if Input.is_action_just_pressed('escape'):
		var pause_instantiated = pause.instantiate()
		add_child(pause_instantiated)
