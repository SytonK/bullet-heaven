class_name Projectile extends Hitbox

var direction: Vector2 = Vector2.RIGHT
var speed: float
var duration: float = 5
var time_passed: float = 0

func _physics_process(delta: float) -> void:
	position += direction * speed * delta
	rotation = direction.angle()
	time_passed += delta
	if time_passed > duration:
		queue_free()

func _on_area_entered(area: Area2D) -> void:
	super._on_area_entered(area)
	queue_free()
