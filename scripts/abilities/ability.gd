class_name Ability extends Node2D

var level: int = 1

func add_ability(player: Player) -> void:
	player.add_child(self)
