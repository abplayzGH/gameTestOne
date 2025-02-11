extends Node2D

const SPEED: int = 60
var direction: int = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		animated_sprite_2d.flip_h = true
		direction = -1
	else:
		pass
	if ray_cast_left.is_colliding():
		animated_sprite_2d.flip_h = false
		direction = 1
	else:
		pass
	position.x += delta * SPEED * direction
