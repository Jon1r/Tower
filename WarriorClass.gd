extends KinematicBody2D

var vel 
var attack = false
var see_enemy = false
var enemy
var walk_speed = 100
var health
var dmg

#Конструктор
func _init(_action):
	var action = _action
	var walk_speed = 100

func _ready():
	if enemy:
		vel = Vector2(-1, 0)
	else:
		vel = Vector2(1, 0)

func _physics_process(delta):
	
	if see_enemy:
		#$Sprite/Peasant/AnimationPlayer.stop("walk")
		if attack:
			attack = false
			$AnimationPlayer.play("walk")
	else:
		#$Sprite/Peasant/AnimationPlayer.stop("attack")
		$AnimationPlayer.play("walk")
		#this.actionEnemy.AnimationPlayer.play("walk")
		move_and_slide(vel * walk_speed * delta)
		
func explode():
	queue_free()
	





func _on_Attack_speed_timeout():
	attack = true


func _on_DetectRadius_body_exited(body):
	see_enemy = false

func take_damage(dmg):
	health -= dmg
	print(health)
	if health < 1:
		explode()
