# SLIDE STATE
extends Node

onready var player = get_parent().get_parent()
func on_enter(new_state,old_state):
	player.anim.play("duck")
	player.velocity.x = player.velocity.x*2 
func on_exit(old_state,new_state):
	pass
func state_logic(delta):
	pass	
func transition_logic(delta):	
	#slide to idle
	if player.controls.down == false and player.on_ground:
		return "idle"
	#slide to fall
	
	return null	
