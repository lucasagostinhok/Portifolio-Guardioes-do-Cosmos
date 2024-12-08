extends Node2D

func _ready():
	get_tree().paused = true

	if $shipIA:
		$shipIA.visible = false  
		$shipIA.set_process(false)
		print("Nó 'shipIA' desativado no início do jogo.")

func _process(delta):
	if Input.is_action_just_pressed("ui_help"):
		_activate_shipIA()

func _activate_shipIA():
	var ship_ia = $shipIA
	if ship_ia.is_visible():
		print("Nave IA já está ativa.")
		return

	ship_ia.global_position = $ship.global_position + Vector2(50, 50)
	ship_ia.visible = true 
	ship_ia.set_process(true)
	print("Nave IA ativada na posição:", ship_ia.global_position)

	var despawn_timer = Timer.new()
	despawn_timer.wait_time = 10
	despawn_timer.one_shot = true
	despawn_timer.connect("timeout", self, "_deactivate_shipIA")
	add_child(despawn_timer)
	despawn_timer.start()

func _deactivate_shipIA():
	var ship_ia = $shipIA
	if ship_ia:
		ship_ia.visible = false  
		ship_ia.set_process(false)
		print("Nave IA desativada após 10 segundos.")

func game_over():
	get_tree().change_scene("res://scenes/gameoverscreen.tscn")

func reset_camera():
	var cameras = get_tree().get_nodes_in_group("cameras")
	for camera in cameras:
		if camera.is_instance_valid():
			camera.queue_free()

	var camera = Camera2D.new()
	add_child(camera)
	camera.current = true

func _load_game_over_scene():
	get_tree().change_scene("res://scenes/gameoverscreen.tscn")
