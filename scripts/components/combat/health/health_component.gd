class_name HealthComponent extends Node

signal died

@export var health_resource: HealthResourc

var current_health: float : set = _set_health

func _ready() -> void:
	current_health = health_resource.max_health

func _set_health(new_val: float) -> void:
	if new_val <= 0:
		died.emit()
	else:
		current_health = new_val
