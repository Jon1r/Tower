extends KinematicBody2D

export (int) var max_health 

var vel = Vector2(-1, 0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func get_collision():
	$myShape.hide()
	return $myShape.get_shape()

func get_detect_radius_shape():
	return $DetectRadius/CollisionShape2D.get_shape()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#func get_collision_layer():
	return $DetectRadius.get_collision_layer_bit(2)

#func get_collision_mask():
	return $DetectRadius.get_collision_mask_bit(1)

func play(action):
	pass

func take_damage(dmg):
	max_health -= dmg
	print(max_health)
	if max_health < 0:
		queue_free()
