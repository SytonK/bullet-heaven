class_name Hurtbox extends Area2D

signal hurt(attack_resource: AttackResource)

func _init() -> void:
	area_entered.connect(_on_area_entered)

func get_attacked(attack_resource: AttackResource) -> void:
	hurt.emit(attack_resource)

func _on_area_entered(area: Area2D) -> void:
	assert(area is Hitbox, "area entered hurtbox that is not a hitbox")
	get_attacked((area as Hitbox).attack_resource)
