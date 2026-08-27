extends Node2D

@export var speed: float = 300.0        # pixeles por segundo
@export var stop_distance: float = 4.0  # distancia para considerar que llegó al objetivo
@export var allow_click_move: bool = true

var target_pos: Vector2
var moving: bool = false

func _ready() -> void:
	target_pos = global_position

func _process(delta: float) -> void:
	# Movimiento por teclado (WASD / flechas)
	var input_dir := Vector2(
		int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")),
		int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	)
	if input_dir.length() > 0:
		input_dir = input_dir.normalized()
		global_position += input_dir * speed * delta
		moving = false
		return

	# Movimiento suave hacia target_pos (si se clickeó)
	if moving:
		global_position = global_position.move_toward(target_pos, speed * delta)
		if global_position.distance_to(target_pos) <= stop_distance:
			global_position = target_pos
			moving = false

func _input(event) -> void:
	if not allow_click_move:
		return
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		# izquierda = 1
		target_pos = event.position
		moving = true
		# si quieres teletransportar en lugar de mover, descomenta:
		# global_position = target_pos
		# moving = false
