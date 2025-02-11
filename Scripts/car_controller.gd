extends VehicleBody3D

@export var MAX_STEERING = 0.9
@export var ENGINE_POWER = 300

func _physics_process(delta: float) -> void:
	steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEERING, delta * 10)
	engine_force = Input.get_axis("down", "up") * ENGINE_POWER
