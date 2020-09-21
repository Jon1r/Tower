extends "res://Gun.gd"


func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("click"):
		shoot()
