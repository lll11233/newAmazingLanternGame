extends Node

var max_lives = 5
var lives = max_lives

func lives_lost(value):
	lives = lives - value
