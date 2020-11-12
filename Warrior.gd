extends KinematicBody2D

export (float) var attack_speed
export (int) var damage
export (int) var walk_speed
export (int) var cost
export (int) var max_health
export (bool) var enemy


var health
var change_health
var dead = false 

func control(delta):
	pass

func _physics_process(delta):
	control(delta)
