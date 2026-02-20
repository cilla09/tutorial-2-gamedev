extends Area2D
@onready var win_ui = get_node("../CanvasLayer/WinUI")

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if body.name == "BlueShip":
		print("Reached objective!")
		win_ui.visible = true
