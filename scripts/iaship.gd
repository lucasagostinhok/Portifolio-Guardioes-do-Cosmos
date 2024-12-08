extends Node2D

const PRE_LAZER = preload("res://scenes/lazer.tscn")
export var vel = 180.0 
var target_direction = Vector2(0, 1)
var change_direction_timer = 0.0 

func _ready():
	print("Nave IA inicializada em posição:", global_position)

func _process(delta):
	change_direction_timer -= delta
	if change_direction_timer <= 0:
		_generate_random_direction()
		change_direction_timer = 2.0 + randf() * 1.5

	_check_screen_bounds()

	translate(target_direction * vel * delta)

	print("Movendo IA para posição:", global_position)

	if randf() < 0.1:
		_shoot()

func _check_screen_bounds():
	var screen_size = get_viewport().get_visible_rect().size

	if global_position.x <= 21:
		target_direction.x = abs(target_direction.x)
		_apply_random_vertical_adjustment()
	elif global_position.x >= screen_size.x - 21:
		target_direction.x = -abs(target_direction.x)
		_apply_random_vertical_adjustment()

	if global_position.y <= 150:
		target_direction.y = abs(target_direction.y)
		_apply_random_horizontal_adjustment() 
	elif global_position.y >= screen_size.y - 21:
		target_direction.y = -abs(target_direction.y)
		_apply_random_horizontal_adjustment()

func _apply_random_horizontal_adjustment():
	target_direction.x += (randf() - 0.5) * 0.5
	target_direction = target_direction.normalized()

func _apply_random_vertical_adjustment():
	target_direction.y += (randf() - 0.5) * 0.5 
	target_direction = target_direction.normalized()

func _generate_random_direction():
	while true:
		var dirX = randi() % 3 - 1 
		var dirY = randi() % 3 - 1 
		if dirX != 0 or dirY != 0: 
			target_direction = Vector2(dirX, dirY).normalized()
			print("Nova direção gerada para IA:", target_direction)
			break

func _shoot():
	var lazer = PRE_LAZER.instance()
	lazer.global_position = global_position
	get_parent().add_child(lazer)
	print("Nave IA disparou!")

func _on_area_area_entered(area):
	if area.is_in_group("asteroid"):
		print("Nave IA colidiu com um meteoro!")
