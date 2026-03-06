class_name Hurtbox extends Area2D

signal hurt(attack_resource: AttackResource)

func _init() -> void:
	collision_mask = 0

func get_attacked(attack_resource: AttackResource) -> void:
	hurt.emit(attack_resource)
