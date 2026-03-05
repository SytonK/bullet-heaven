extends Node2D

@onready var hitbox: Hitbox = $Hitbox

@onready var cooldown_timer: Timer = $CooldownTimer

func _on_cooldown_timer_timeout() -> void:
	hitbox.modulate.a = 1
	hitbox.monitorable = true
	hitbox.monitoring = true
	await get_tree().create_timer(.5).timeout
	hitbox.modulate.a = .5
	hitbox.monitorable = false
	hitbox.monitoring = false
