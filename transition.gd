extends Node2D
@onready var wipe = $wipe
func play(): #wipe transition animation
	wipe.play("wipe")
