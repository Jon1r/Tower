extends KinematicBody2D

var vel = Vector2(3, 0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func get_collision():
	return $CollisionShape2D.get_shape()

func get_detect_radius_shape():
	return $DetectRadius/CollisionShape2D.get_shape()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_collision_layer():
	return $DetectRadius.get_collision_layer()

func get_collision_mask():
	return $DetectRadius.get_collision_mask()

func play(action):
	return $AnimationPlayer.play(action)
