extends "res://LightWarrior.gd"

#var warrior = preload("res://FastEnemy.gd")
#var runner = warrior.new($AnimationPlayer, 100)


func _ready():
	health = max_health




func _on_DetectRadius_body_entered(body):
	print(body.name)
