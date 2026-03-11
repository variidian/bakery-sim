extends Node2D

func _on_button_pressed() -> void:
	Click.play()
	c.anim() #start button to trigger animation + next scene
	transition.change_scene("res://e/start.tscn", "startmenu")
