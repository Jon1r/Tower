extends "res://LightWarrior.gd"





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_DetectRadius_body_entered(body):
	print(body.name)
	see_enemy = true	
	attack = true
	$AttackSpeed.start()


func _on_AttackArea_body_entered(body):
	print(body.name)
	if body.has_method('take_damage'):
		body.take_damage(damage)
