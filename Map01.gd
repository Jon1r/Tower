extends Node2D




func _on_Basic_Gun_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)


func _on_HUD_buy(warrior):
	var w = warrior.instance()
	add_child(w)
	w.position = $BasicTower/Position2D.global_position
	
func _process(delta):
	$Camera2D.position = get_global_mouse_position()


func _on_EnemyTower01_enemy(basic):
	var enemy = basic.instance()
	add_child(enemy)
	enemy.position = $EnemyTower01/Position2D.global_position
	
