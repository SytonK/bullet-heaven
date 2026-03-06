class_name Hitbox extends Area2D

@export var damage: float

func _init() -> void:
	collision_layer = 0
	area_entered.connect(_on_area_entered)

func _on_area_entered(area: Area2D) -> void:
	assert(area is Hurtbox, "area entered hurtbox that is not a hitbox")
	
	(area as Hurtbox).get_attacked(damage)
