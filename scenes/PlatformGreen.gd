extends Node2D

@export var speed = 200

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 5
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 5
		
	if Input.is_action_pressed("ui_down"):
		velocity.y += 5
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 5
		
	position += velocity.normalized() * speed * delta
	
