extends CharacterBody2D

var SPEED = 500

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("Izquierda", "Derecha", "Arriba", "Abajo") * SPEED
	move_and_slide()
