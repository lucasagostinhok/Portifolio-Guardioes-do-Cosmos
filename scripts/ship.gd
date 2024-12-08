extends Node2D

const PRE_LAZER = preload("res://scenes/lazer.tscn")
export var vel = 140.0
var life = 5  
var is_game_over = false  

export(NodePath) var lazeres
export(NodePath) var life_bar_path
var life_bar

func _ready():
	if lazeres:
		lazeres = get_node(lazeres)
	else:
		lazeres = get_parent()

	if life_bar_path:
		life_bar = get_node(life_bar_path)
		life_bar.max_value = life
		life_bar.value = life

	print("Inicializado com vida:", life)

func _process(delta):
	if is_game_over:
		return

	var dirX = 0
	var dirY = 0

	if Input.is_action_pressed("ui_left"):
		dirX -= 1
	if Input.is_action_pressed("ui_right"):
		dirX += 1
	if Input.is_action_pressed("ui_up"):
		dirY -= 1
	if Input.is_action_pressed("ui_down"):
		dirY += 1

	translate(Vector2(dirX, dirY) * vel * delta)

	if Input.is_action_just_pressed("ui_accept"):
		if get_tree().get_nodes_in_group("lazeres").size() < 10:
			var lazer = PRE_LAZER.instance()
			lazer.global_position = global_position
			lazeres.add_child(lazer)

	global_position.x = clamp(global_position.x, 21, 139)
	global_position.y = clamp(global_position.y, 24, 266)

func _on_area_area_entered(_area):
	if is_game_over:
		return

	print("Colisão detectada! Reduzindo vida...")
	_reduzir_vida()

func _reduzir_vida():
	if life > 0:
		life -= 1
		print("Vida reduzida para:", life)

		if life_bar:
			life_bar.value = life 

		if life <= 0:
			_game_over()
	else:
		print("Vida já está em zero.")

func _game_over():
	if is_game_over:
		return

	is_game_over = true
	print("Game Over! Vida zerada.")

	var gameover_scene = preload("res://scenes/gameoverscreen.tscn")
	get_tree().change_scene_to(gameover_scene)
