extends Node2D

@onready var health_component: HealthComponent = $HealthComponent

func _on_hurtbox_hurt(attack_resource: AttackResource) -> void:
	health_component.current_health -= attack_resource.damage



func _on_health_component_died() -> void:
	queue_free()
