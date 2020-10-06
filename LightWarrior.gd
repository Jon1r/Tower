extends "res://Warrior.gd"

var vel 
var attack = false
var see_enemy = false
var enemy = null
#Конструктор
func _init():
	pass
	
func set_enemy(_enemy):
	enemy = _enemy.instance()
	$DetectRadius/CollisionShape2D.set_shape(enemy.get_detect_radius_shape())
	$myShape.set_shape(enemy.get_collision())
	vel = enemy.vel
	$DetectRadius.set_collision_layer(enemy.get_collision_layer())
	$DetectRadius.set_collision_mask(enemy.get_collision_mask())
	add_child(enemy)

func _ready():
	pass

func _physics_process(delta):
	
	if enemy == null:
		return
	if see_enemy:
		#$Sprite/Peasant/AnimationPlayer.stop("walk")
		if attack:
			print(delta)
			attack = false
			enemy.play("attack")
	else:
		#$Sprite/Peasant/AnimationPlayer.stop("attack")
		enemy.play("walk")
		#this.actionEnemy.AnimationPlayer.play("walk")
		move_and_slide(vel * speed * delta)
		
func explode():
	queue_free()
	


func _on_DetectRadius_body_entered(body):
	see_enemy = true
	attack = true
	$Attack_speed.start()


func _on_Attack_speed_timeout():
	attack = true


func _on_DetectRadius_body_exited(body):
	see_enemy = false
