extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()

	if direction != Vector2.ZERO:
		rotation = direction.angle()


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
