extends Node2D

func _on_play_btn_pressed():
	TransitionLayer.change_scene("res://scenes/levels/level.tscn")

func _on_quit_btn_pressed():
	get_tree().quit()
