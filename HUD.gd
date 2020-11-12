extends CanvasLayer


var chubrik = preload("res://Chubrik.tscn")

signal buy


func _on_Button_pressed():
	#var warrior = preasant.instance()
	emit_signal("buy", chubrik)
	


func _on_Button2_pressed():
	pass # Replace with function body.
