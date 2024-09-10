extends CharacterBody2D

var SPEED = 200
var dash_speed = 10

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("Izquierda", "Derecha", "Arriba", "Abajo") * SPEED
	if Input.is_action_just_pressed("Dash"):
		velocity *= dash_speed
	move_and_slide()
