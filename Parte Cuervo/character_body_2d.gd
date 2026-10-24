extends CharacterBody2D


const SPEED = 200.0
@onready var char: AnimatedSprite2D = $CollisionShape2D/Char

func _physics_process(delta: float) -> void:
	process_movement()
	move_and_slide()
func process_movement() ->void:
# Get the input direction and handle the movement/deceleration.
# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up","ui_down"  )

	velocity = direction * SPEED
	
	play_animation(direction)
	
#func left ():

#func process_animation() -> void:
#	if velocity != Vector2.ZERO
#	play_animation()
	
	
func play_animation(dir: Vector2) -> void:
	if dir.x > 0:
		char.play("right")
	elif dir.x < 0:
		char.play("left")
	elif dir.y < 0:
		char.play("backward")
	elif dir.y > 0:
		char.play("forward")
	else:
		char.stop()


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
