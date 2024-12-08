extends Node2D

var opcao = 0
var blinks = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_down"):
		opcao += 1

	if Input.is_action_just_pressed("ui_up"):
		opcao -= 1

	if opcao < 0:
		opcao = $itens.get_child_count() - 1

	if opcao > $itens.get_child_count() - 1:
		opcao = 0

	if Input.is_action_just_pressed("ui_accept"):
		set_process(false)
		match opcao:
			0:
				iniciar_reinicio()
			1: 
				get_tree().quit()

	if opcao >= 0 and opcao < $itens.get_child_count():
		var child = $itens.get_child(opcao) 
		$seta.global_position = child.global_position + Vector2(-13, 8)
	else:
		print("Erro: Índice 'opcao' fora do intervalo")

func _on_timer_blink_timeout():
	$itens/start.visible = not $itens/start.visible
	blinks += 1

	if blinks >= 10:
		$timer_blink.stop() 
		blinks = 0 
		trocar_para_cena_principal()

func iniciar_reinicio():
	
	if $start and $start.has_method("play"):
		$start.play()

	blinks = 0 
	$timer_blink.start()

func trocar_para_cena_principal():
	get_tree().paused = false 
	get_tree().change_scene("res://scenes/game.tscn")
