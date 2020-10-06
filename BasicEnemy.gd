extends KinematicBody2D

var vel = Vector2(2, 0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func get_collision():
	return $myShape.get_shape()

func get_detect_radius_shape():
	return $DetectRadius/CollisionShape2D.get_shape()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_collision_layer():
	return $DetectRadius.collision_layer

func get_collision_mask():
	return $DetectRadius.collision_mask

func play(action):
	pass
