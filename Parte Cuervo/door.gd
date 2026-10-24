extends Area2D
var entered = false

func _on_body_entered(body: Node2D):
	entered = true

func _process(_delta):
	if entered == true:
			get_tree().change_scene_to_file("res://Bedroom2.tscn")


func _body_entered(body: Node2D) -> void:
	pass # Replace with function body.
