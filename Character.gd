extends Node2D

onready var animation_player = $AnimationPlayer

func _process(delta):
	if Input.is_action_just_pressed("1"):
		animation_player.play("Idle")
	elif Input.is_action_just_pressed("2"):
		animation_player.play("Run")
	elif Input.is_action_just_pressed("3"):
		animation_player.play("Jump")
	elif Input.is_action_just_pressed("4"):
		animation_player.play("Fall")
