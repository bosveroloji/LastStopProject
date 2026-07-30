extends TextureButton

@onready var hover_sound = $"../HoverSound"
@onready var click_sound = $"../ClickSound"

func _ready():
	mouse_entered.connect(_on_hover)
	pressed.connect(_on_pressed)

func _on_hover():
	if !hover_sound.playing:
		hover_sound.play()

func _on_pressed():
	click_sound.play()

	await click_sound.finished

	get_tree().change_scene_to_file("res://Main.tscn")
