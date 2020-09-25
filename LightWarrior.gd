extends "res://Warrior.gd"

var vel = Vector2(1, 0)
var attack = false
var see_enemy = false

func _ready():
	pass

func _physics_process(delta):
	
	if see_enemy:
		#$Sprite/Peasant/AnimationPlayer.stop("walk")
		if attack:
			attack = false
			$Sprite/Peasant/AnimationPlayer.play("attack")
	else:
		#$Sprite/Peasant/AnimationPlayer.stop("attack")
		$Sprite/Peasant/AnimationPlayer.play("walk")
		move_and_slide(vel * speed * delta)
	


func _on_DetectRadius_body_entered(body):
	see_enemy = true
	attack = true
	$Attack_speed.start()


func _on_Attack_speed_timeout():
	attack = true


func _on_DetectRadius_body_exited(body):
	see_enemy = false
