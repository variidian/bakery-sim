extends CanvasLayer
@onready var player = $ColorRect/AnimationPlayer
func anim():
	player.play("new_animation")
