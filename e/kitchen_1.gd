extends Node2D
@onready var progress_bar = $ProgressBar
@onready var croissant = $AnimatedSprite2D
func _on_button_pressed() -> void:
	c.anim()
	a.from_kitchen1 = true
	transition.change_scene("res://e/draggables_guide.tscn", "kitchen1")


func _on_buttonn_pressed() -> void:
	progress_bar.value += 10
	if progress_bar.value == 100:
		croissant.play("default")


func _on_animated_sprite_2d_animation_finished() -> void:
	c.anim()
	transition.change_scene("res://e/kitchen_2.tscn","kitchen1")
