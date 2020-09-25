extends "res://Warrior.gd"

var vel = Vector2(1, 0)

func _ready():
	$Peasant/AnimationPlayer.play("walk")

func _physics_process(delta):
	
	move_and_slide(vel * speed * delta)
	
