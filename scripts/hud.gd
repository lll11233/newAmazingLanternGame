extends CanvasLayer



func _ready():
	load_hearts()


func load_hearts():
	#$HeartsFull.size.x = Global.lives * 32
	#$HeartsEmpty.size.x = (Global.max_lives - Global.lives)*32
	#$HeartsEmpty.position.x = $HeartsFull.position.x + $HeartsFull.size.x * $HeartsFull.scale.x
	#
	###hearts HUD doesnt work, why????
	var full = $HeartsFull
	var empty = $HeartsEmpty
	full.custom_minimum_size.x = Global.lives * 32
	empty.custom_minimum_size.x = (Global.max_lives-Global.lives)*32
	
	empty.position.x = full.position.x + full.position.x + full.custom_minimum_size.x
	
	
