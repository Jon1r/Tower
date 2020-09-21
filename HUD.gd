extends CanvasLayer

export (PackedScene) var light_warrior

signal buy


func _on_Button_pressed():
	emit_signal("buy", light_warrior)
