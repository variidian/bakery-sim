extends Node2D
@onready var customer = $customer
const customer_sprite1 = preload("res://images/icon.jpg") #PLACEHOLDER SPRITE | CHANGE LATER
const customer_sprite2 = preload("res://images/godotwaka2.png") #PLACEHOLDER SPRITE | CHANGE LATER
const customer_sprite3 =  preload("res://icon.svg") #PLACEHOLDER SPRITE | CHANGE LATER
const croissant_dialogue = preload("res://purchase_croissant.dialogue")
func _ready() -> void:
	var randf = randf()
	randomize()
	if randf <= 0.33:
		customer.texture = customer_sprite1
	elif randf >= 0.34 and randf <= 0.66:
		customer.texture = customer_sprite2
	else:
		customer.texture = customer_sprite3
	DialogueManager.show_dialogue_balloon(croissant_dialogue, "start")
