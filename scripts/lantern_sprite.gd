extends Node2D

@onready var light = $Light

var fuel := 100.0
var max_fuel := 150

func _process(delta):
	# Fuel drains over time
	fuel -= delta * 5.0
	fuel = clamp(fuel, 0, max_fuel)
	
	# Make the lantern dim as fuel runs out
	light.energy = fuel / max_fuel

# Recharge function to use when sacrificing health
func recharge(amount := 20.0):
	fuel += amount
	fuel = clamp(fuel, 0, max_fuel)
	
	
