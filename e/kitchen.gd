extends Node2D
var objects_removed = 0
@onready var bowl = $bowl
@onready var sugar = $sugar
@onready var flour = $flour
@onready var salt = $salt
@onready var milk = $milk
func _ready() -> void:
	milk.show()
	salt.show()
	flour.show()
	sugar.show() #reset scene each time to show object
	bowl.show() 
	objects_removed = 0 #reset amount of objects having been placed into bowl
func _on_area_2d_area_entered(area: Area2D) -> void: 
	var object = area.get_parent()
	object.hide() #hides objects to not be draggable + visible once in bowl
	objects_removed += 1
	if objects_removed == 4: #when all objects have been placed into bowl
		c.anim()
		transition.change_scene("res://e/get_order.tscn", "kitchen")


func _on_button_pressed() -> void:
	c.anim()
	transition.change_scene("res://e/draggables_guide.tscn", "kitchen")
