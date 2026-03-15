extends Node2D

@onready var bomb = get_node_or_null("Bom")
@onready var treasure = get_node_or_null("Trea")
@onready var player = get_node_or_null("Play")

var hit_distance = 50.0
var finished = false

func _process(delta):
	if finished:
		return

	if player == null or bomb == null or treasure == null:
		return

	if player.position.distance_to(bomb.position) < hit_distance:
		finished = true
		print("Boom!")
		get_tree().reload_current_scene()

	elif player.position.distance_to(treasure.position) < hit_distance:
		finished = true
		print("YOU WIN!")
