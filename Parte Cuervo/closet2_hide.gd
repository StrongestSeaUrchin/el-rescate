extends Node2D
var entered = false

#@onready var key = $Ekey
#@onready var hide = $hideq
@onready var hide = $hidec

func _on_body_entered(body: CharacterBody2D):
	entered = true
	#$hideq.visible = true
	#$key.visible = true
	$hidec.show()
	
	
func _on_body_exited(body: Node2D):
	entered = false
	#$hideq.visible = false
	#$key.visible = false
	$hidec.hide()

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("hide"):
			var hiding_spot = 1
			get_tree().change_scene_to_file("res://die.tscn")
