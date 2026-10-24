extends Node2D
var entered = false

#@onready var key = $Ekey
#@onready var hide = $hideq
@onready var hide = $hides

func _on_s_body_entered(body: CharacterBody2D):
	entered = true
	#$hideq.visible = true
	#$key.visible = true
	$hides.show()
	
	
func _on_s_body_exited(body: Node2D):
	entered = false
	#$hideq.visible = false
	#$key.visible = false
	$hides.hide()

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("hide"):
			get_tree().change_scene_to_file("res://Survive.tscn")


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
