extends CanvasLayer

#@onready var heart_streak = [
	#$HBoxContainer/Heart1,
	#$HBoxContainer/Heart2,
	#$HBoxContainer/Heart3,
	#$HBoxContainer/Heart4,
	#$HBoxContainer/Heart5
#]

@onready var heart_streak = $Panel/HBoxContainer.get_children()

@onready var lantern = get_node("/root/Node/Player/Lantern")

var max_hearts = 5
var hearts = max_hearts
var heart_cost = 1


func update_hearts():
	for i in range(max_hearts):
		if i < hearts:
			heart_streak[i].modulate.a = 1.0   # visible
		else:
			heart_streak[i].modulate.a = 0.0
			#dissapear!!!
