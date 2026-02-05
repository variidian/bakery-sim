extends Node2D
const dialogue = preload("res://marry.dialogue")
func _ready():
	DialogueManager.show_dialogue_balloon(dialogue, "start")
