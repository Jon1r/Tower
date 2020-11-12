extends StaticBody2D


var basic = preload("res://Runner.tscn")

signal enemy

var HP
var def
var spawn = true

func _process(delta):
	if spawn:
		spawn = false
		$TimerSpawn.start()

func _on_TimerSpawn_timeout():
	spawn = true
	emit_signal("enemy", basic)
