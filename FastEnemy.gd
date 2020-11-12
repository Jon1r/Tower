extends KinematicBody2D

var see_enemy = false
var attack = false
var enemy
var vel
var walk_speed

func _init(_enemy, _speed):
	walk_speed = _speed
	enemy = _enemy

func control(delta):
	if see_enemy:
		#$Sprite/Peasant/AnimationPlayer.stop("walk")
		if attack:
			attack = false
			enemy.play("attack")
	else:
		#$Sprite/Peasant/AnimationPlayer.stop("attack")
		enemy.play("walk")
		print(delta)
		#this.actionEnemy.AnimationPlayer.play("walk")
		move_and_slide(vel * walk_speed * delta)

func _physics_process(delta):
	#control(delta)
	pass
		
func explode():
	queue_free()
	


