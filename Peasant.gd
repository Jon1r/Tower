extends KinematicBody2D


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

func play(action):
	return $AnimationPlayer.play(action)
