extends Node3D

# Oyun başladığında chunk varsayılan olarak gizli başlar
func _ready() -> void:
	hide()

# İlk Area3D'ye oyuncu girdiğinde göster
func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		show()

# İkinci Area3D (adı 'Hide' olan) alanından oyuncu çıktığında gizle
func _on_hide_body_exited(body: Node3D) -> void:
	if body.is_in_group("Player"):
		hide()
