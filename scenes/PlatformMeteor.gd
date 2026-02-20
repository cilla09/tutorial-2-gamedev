extends AnimatableBody2D

@export var speed = 500.0
@export var distance = 1010.0

var start_x = 100.0
var time_passed = 0.0

func _ready():
	start_x = position.x

func _physics_process(delta):
	time_passed += delta
	
	var offset = sin(time_passed * (speed / distance)) * distance
	var target_x = start_x + offset
   
	if target_x < 0:
		position.x = 0
	else:
		position.x = target_x
