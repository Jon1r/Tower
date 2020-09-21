extends Area2D

signal shoot

export (PackedScene) var Bullet

var can_shoot = true

func shoot():
	if can_shoot:
		can_shoot = false
		$GunTimer.start()
		var dir = Vector2(1,0).rotated(global_rotation)
		emit_signal("shoot", Bullet, $Muzzle.global_position, dir)


func _on_GunTimer_timeout():
	can_shoot = true
