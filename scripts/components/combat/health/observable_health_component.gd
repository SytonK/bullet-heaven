class_name ObservableHealthComponent extends HealthComponent

signal health_changed(new_value: float)

func _set_health(new_val: float) -> void:
	var new_helth: float = max(0, new_val)
	if new_helth != current_health:
		health_changed.emit(new_helth)
	
	current_health = new_helth
	
	if current_health == 0:
		died.emit()
