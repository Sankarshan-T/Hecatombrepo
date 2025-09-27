extends CharacterBody2D
class_name Player


@export var speed = 400
var direction = 0

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if Input.is_action_pressed("left"):
		direction = -1
	elif Input.is_action_pressed("right"):
		direction = 1

func _physics_process(delta):
	look_at(get_global_mouse_position())
	get_input()
	move_and_slide()
