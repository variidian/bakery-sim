extends Node2D
@onready var wipe = $wipe
func play():
	wipe.play("wipe")
