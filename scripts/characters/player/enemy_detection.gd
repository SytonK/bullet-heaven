class_name EnemyDetection extends Node2D

@onready var area_2d_small: Area2D = $Area2DSmall

@onready var area_2d_medium: Area2D = $Area2DMedium

@onready var area_2d_larg: Area2D = $Area2DLarg

var closest_enemy_position: Vector2 = Vector2.ZERO

func _on_sample_frequency_timer_timeout() -> void:
	detect_closest_enemy()

func detect_closest_enemy() -> void:
	if (_detect_closest_enemy_in_area(area_2d_small) || 
		_detect_closest_enemy_in_area(area_2d_medium) || 
		_detect_closest_enemy_in_area(area_2d_larg)):
			return
	
	closest_enemy_position = Vector2.ZERO

func _detect_closest_enemy_in_area(detect_area: Area2D) -> bool:
	var overlapped_areas: Array[Area2D] = detect_area.get_overlapping_areas()
	if overlapped_areas.size() == 0:
		return false
	
	var min_distance: float = INF
	
	for area in overlapped_areas:
		var distance = global_position.distance_to(area.global_position)
		if distance < min_distance:
			min_distance = distance
			closest_enemy_position = area.global_position
	
	return true
