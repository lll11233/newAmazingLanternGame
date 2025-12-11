extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$portal_scene.hide()
	pass





func _on_portal_button_pressed() -> void:
	pass # Replace with function body.
	#change to level 2
	$"scene 1/lava".hide()
	$"scene 1/TextureRect2".hide()
	$portal_scene.hide()
