extends StaticBody2D

var light_warrior = preload("res://LightWarrior.tscn")
var basic = preload("res://BasicEnemy.tscn")

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
	var warrior = light_warrior.instance()
	warrior.set_enemy(basic)
	emit_signal("enemy", warrior)
