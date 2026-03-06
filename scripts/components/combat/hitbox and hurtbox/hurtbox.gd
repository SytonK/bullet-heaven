class_name Hurtbox extends Area2D

signal hurt(damage: float)

func _init() -> void:
	collision_mask = 0

func get_attacked(damage: float) -> void:
	hurt.emit(damage)
