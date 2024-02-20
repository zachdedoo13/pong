extends CharacterBody2D


const SPEED = 10



func _physics_process(delta):
	# Add the gravity.
	if Input.is_action_pressed("up2"):
		position.y -= SPEED
	if Input.is_action_pressed("down2"):
		position.y += SPEED

	# move_and_slide()
