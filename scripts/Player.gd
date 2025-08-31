extends CharacterBody2D

@export var speed: float = 350.0

func _physics_process(_dt: float) -> void:
	var dir := Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	if dir.length() > 1.0:
		dir = dir.normalized()

	velocity = dir * speed
	move_and_slide()
