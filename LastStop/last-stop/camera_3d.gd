extends Camera3D

@export var mouse_sensitivity = 0.002

var camera_x_rotation = 0.0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _input(event):
	if event is InputEventMouseMotion:
		# Sağa sola bakış
		get_parent().rotate_y(-event.relative.x * mouse_sensitivity)

		# Yukarı aşağı bakış
		camera_x_rotation -= event.relative.y * mouse_sensitivity
		camera_x_rotation = clamp(camera_x_rotation, -1.5, 1.5)

		rotation.x = camera_x_rotation


func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
