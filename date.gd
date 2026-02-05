extends Node2D
const dialogue = preload("res://date.dialogue")
func _ready():
	DialogueManager.show_dialogue_balloon(dialogue, "start")
