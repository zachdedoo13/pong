extends CharacterBody2D


var SPEED = 500
var first = true

var pre_ys = []

func _process(delta):
	if first == true:
		velocity.x = 1
		velocity.y = 1 
		first = false
	#print(velocity.x)
	pre_ys.append(velocity.y)
	if len(pre_ys) == 3:
		pre_ys.remove_at(0)
	print(str(pre_ys))
	if velocity.x == 0:
		SPEED *= -1
		position.x += SPEED / 1000
		var root = get_parent()
		var pad1 = root.get_node("paddle1")
		var pad1_pos = pad1.global_position
		var diff = (pad1_pos.y - position.y) * -1
		print(diff)
		velocity.y = (diff * 2)
	
	if velocity.y == 0:
		velocity.y = pre_ys[-2] * -1
		
	velocity.x = SPEED
	move_and_slide()
