extends KinematicBody2D

export (int) var speed
export (int) var damage
export (float) var lifetime
export (int) var power
 
var velocity = Vector2()

func start(_position, _direction):
	position = _position
	rotation = _direction.angle()
	$Lifetime.wait_time = lifetime
	$Lifetime.start()
	velocity = _direction * speed
	

func _process(delta):
	velocity.y += delta * Globals.gravity
	var collision = move_and_collide(velocity * delta)
	
func explode():
	queue_free()


func _on_Lifetime_timeout():
	explode()


func _on_Area2D_body_entered(body):
	print(body.name)
	explode()
	if body.has_method('take_damage'):
		body.take_damage(damage)


