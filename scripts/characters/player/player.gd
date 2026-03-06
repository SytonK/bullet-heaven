class_name Player extends CharacterBody2D

const BASE_MOVEMENT_SPEED: float = 500

@onready var enemy_detection: EnemyDetection = $EnemyDetection

func _physics_process(_delta: float) -> void:
	velocity = Vector2(
		Input.get_axis("move_left", 'move_right'),
		Input.get_axis("move_up", 'move_down'),
	) * BASE_MOVEMENT_SPEED
	
	move_and_slide()
