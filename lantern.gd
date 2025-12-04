extends CharacterBody2D


@export var target: CharacterBody2D

	
extends Node2D

@onready var light = $PointLight2D

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



const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta):
	_calculate_velocity()
	
	#set_an_animation()
	
	move_and_slide()


func _calculate_velocity():
	if target == null:
		return
	var distanceToTarget = 20
	var targetPosition = target.position - Vector2(0,-9)
	
	if position.distance_to(targetPosition) > distanceToTarget:
		var direction = (targetPosition - position).normalized()
		velocity = direction * SPEED
		velocity.y *= 3
	elif position.y - targetPosition.y > 2 || position.y - targetPosition > 2:
		velocity.x = 0
	else: velocity = Vector2.ZERO
	
	
	
	
