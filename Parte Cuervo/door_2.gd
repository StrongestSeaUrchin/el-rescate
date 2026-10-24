extends Area2D
var entered = false

func _on_door_2_body_entered(body: Node2D):
	entered = true

func _process(_delta):
	if entered == true:
			get_tree().change_scene_to_file("res://Kitchen.tscn")
