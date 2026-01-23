extends Node2D

func _on_area_2d_area_entered(area: Area2D) -> void:
	var object = area.get_parent()
	object.queue_free()
