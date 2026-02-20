extends Node
@onready var ship = $GreenShip2

func _physics_process(_delta):
	if ship.global_position.y > 750:
		get_tree().reload_current_scene()
