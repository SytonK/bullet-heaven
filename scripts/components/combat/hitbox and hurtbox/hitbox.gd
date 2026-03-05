class_name Hitbox extends Area2D

@export var attack_resource: AttackResource

func _init() -> void:
	collision_mask = 0
