class_name DarkShard extends Ability

const DARK_SHARD_PROJECTILE = preload("uid://ceisuysre6tg7")

const COOLDOWN: float = .75
const DAMAGE: float = 5
const SPEED: float = 500

var _cooldown_timer: Timer

var enemy_detecroy: EnemyDetection

func _init() -> void:
	_init_cooldown()

func _init_cooldown() -> void:
	_cooldown_timer = Timer.new()
	_cooldown_timer.wait_time = COOLDOWN
	_cooldown_timer.autostart = true
	_cooldown_timer.timeout.connect(_on_cooldown_timer_timeout)
	add_child(_cooldown_timer)

func add_ability(player: Player) -> void:
	super.add_ability(player)
	enemy_detecroy = player.enemy_detection

func _on_cooldown_timer_timeout() -> void:
	var dark_shard_projectile: Projectile = DARK_SHARD_PROJECTILE.instantiate()
	dark_shard_projectile.damage = DAMAGE
	dark_shard_projectile.speed = SPEED
	dark_shard_projectile.global_position = global_position
	if enemy_detecroy.closest_enemy_position != Vector2.ZERO:
		dark_shard_projectile.direction = (enemy_detecroy.closest_enemy_position - global_position).normalized()
	get_tree().root.add_child(dark_shard_projectile)
