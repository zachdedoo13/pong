extends CharacterBody2D


const SPEED = 10



func _physics_process(delta):
	# Add the gravity.
	if Input.is_action_pressed("up1"):
		position.y -= SPEED
	if Input.is_action_pressed("down1"):
		position.y += SPEED

	# move_and_slide()
