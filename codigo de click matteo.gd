# Movimiento suave hacia target_pos (si se clickeó)
if moving:
	global_position = global_position.move_toward(target_pos, speed * delta)
	if global_position.distance_to(target_pos) <= stop_distance:
		global_position = target_pos
		moving = false