extends CharacterBody2D

@export var speed = 150
@export var player : Player
var player_chase = true


func _process(delta: float) -> void:
	if player_chase:
		var direction = (player.position - position).normalized()
		velocity = direction * speed
		look_at(player.position)
		move_and_slide()
