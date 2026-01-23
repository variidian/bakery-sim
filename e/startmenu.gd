extends Node2D
@onready var animation = $AnimationPlayer
func _on_area_2d_mouse_entered() -> void:
	animation.play("text_pop")
func _on_area_2d_mouse_exited() -> void:
	animation.play("text_pop2")
func _on_area_2d__mouse_entered() -> void:
	animation.play("button_pop")
func _on_area_2d__mouse_exited() -> void:
	animation.play("button_pop2")


func _on_button_pressed() -> void:
	c.anim() #start button to trigger animation + next scene
	transition.change_scene("res://e/get_order.tscn", "startmenu")
