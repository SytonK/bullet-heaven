class_name HealthComponent extends Node

signal died

@export var max_health: float

var current_health: float : set = _set_health

func _ready() -> void:
	current_health = max_health

func _set_health(new_val: float) -> void:
	if new_val <= 0:
		died.emit()
	else:
		current_health = new_val
