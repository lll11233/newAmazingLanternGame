extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_portal_button_pressed() -> void:
	#change to level 2
	$"scene 1/lava".hide()
	$"scene 1/TextureRect2".hide()
	$portal_scene.hide()
	
##why isn't me button showing!!!
