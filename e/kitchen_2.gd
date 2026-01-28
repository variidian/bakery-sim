extends Node2D
@onready var baked_croissant = $baked_croissant
@onready var oven_timer = $Timer
var can_open_oven := false
func _ready() -> void:
	baked_croissant.hide()

func _on_button_pressed() -> void:
	c.anim()
	a.from_kitchen2 = true
	transition.change_scene("res://e/draggables_guide.tscn", "kitchen2")

func _on_area_2d_area_entered(area: Area2D) -> void:
	var object = area.get_parent()
	object.queue_free()
	oven_timer.start()

func _on_timer_timeout() -> void:
	beep.play()
	can_open_oven = true

func _button_oven_pressed() -> void:
	if can_open_oven:
		baked_croissant.show()
		await get_tree().create_timer(1.0).timeout
		c.anim()
		transition.change_scene("res://e/kitchen_3.tscn", "kitchen2")
