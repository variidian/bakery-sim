extends Node2D
const start_dialog = preload("res://start.dialogue")
func _ready():
	DialogueManager.show_dialogue_balloon(start_dialog, "start")
