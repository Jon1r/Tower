extends CanvasLayer

var light_warrior = preload("res://LightWarrior.tscn")
var preasant = preload("res://Peasant.tscn")

signal buy


func _on_Button_pressed():
	var warrior = light_warrior.instance()
	warrior.set_enemy(preasant)
	emit_signal("buy", warrior)
	


func _on_Button2_pressed():
	pass # Replace with function body.
