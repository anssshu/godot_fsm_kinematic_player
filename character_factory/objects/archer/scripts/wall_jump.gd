extends Node

onready var player = get_parent().get_parent()

func on_enter(new_state,old_state):
	player.anim.play("wall_jump")
	if player.on_left_wall:
		player.velocity = player.WALLJUMPSPEED
		player.face_right = true
		player.face_left = false
	elif player.on_right_wall:
		player.velocity = Vector2(-1*player.WALLJUMPSPEED.x,player.WALLJUMPSPEED.y)
		player.face_right = false
		player.face_left = true
	else:
		pass
func on_exit(old_state,new_state):
	pass
func state_logic(delta):
	#if player.controls.left :
		#player.velocity.x = -player.AIRSPEED
	#elif player.controls.right :
		#player.velocity.x = player.AIRSPEED
	#else:
		pass
func transition_logic(delta):
	#wall jump to fall
	if player.velocity.y > 0 :
		return "fall"	
	#wall jump  to attack
	if player.controls.attack :
		return "attack"
	return null	
