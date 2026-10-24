extends Node2D
var entered = false

#@onready var key = $Ekey
#@onready var hide = $hideq
@onready var hide = $hide

func _on_body_entered(body: CharacterBody2D):
	entered = true
	#$hideq.visible = true
	#$key.visible = true
	$hide.show()
	
	
func _on_body_exited(body: Node2D):
	entered = false
	#$hideq.visible = false
	#$key.visible = false
	$hide.hide()

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("hide"):
			get_tree().change_scene_to_file("res://die.tscn")
