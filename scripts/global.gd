extends Node

var max_lives = 5
var lives = max_lives

func lives_lost(value):
	lives = lives - value

var total_coins: int = 0

func coins_collected(value:int):
	total_coins += value
	EventController.emit_signal("coins_collected", total_coins)
