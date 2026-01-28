extends Node2D
@onready var hand_croissant = preload("res://hand_croissant.dialogue")
func _ready():
	DialogueManager.show_dialogue_balloon(hand_croissant,"start")
