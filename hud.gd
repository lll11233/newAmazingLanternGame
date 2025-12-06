extends CanvasLayer




func _ready():
	load_hearts()


func load_hearts():
	$HeartsFull.rect_size.x = Global.lives * 32
	$HeartsEmpty.rect_size.x = (Global.max_lives - Global.lives)*32
	$HeartsEmpty.rect_position.x = $HeartsFull.rect_position.x + $HeartsFull.rect_size.x * $HeartsFull.rect_scale.x
	
	
