class_name playerSidescroller
extends CharacterBody2D

@onready var lantern = $LanternSprite
var lantern_radius := 100
var lantern_increase := 80





# Reference to HUD node
#@onready var hud = get_node("../CanvasLayer")  # adjust path to your HUD

var max_hearts := 5
var hearts:= max_hearts

#
#func _ready():
	#hud.update_hearts()
	#print("HUD ready with hearts: ", hud.hearts)

#func process(delta):
	#if Input.is_action_just_pressed("sacrificeHealth"):
		#if hearts > 0:
			#lantern.recharge(100)   # recharge lantern by 30 fuel
			#hearts -= 1
			#hud.hearts = hearts
			#hud.update_hearts()
#
#func take_damage(amount: int):
	#hearts -= amount
	#hearts = clamp(hearts, 0, max_hearts)
	#hud.update_hearts()
	#







const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	check_for_lava()
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	if Input.is_action_just_pressed("left"):
		$Sprite2D.flip_h = true # Flip left
	elif Input.is_action_just_pressed("right"):
		$Sprite2D.flip_h = false # Flip left


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


#func _on_hit_box_body_entered(lava):
	#Global.lives_lost(1) ## this aint working, why?
	#
func check_for_lava():
	#for area in $HitBox.get_overlapping_areas():
		##value here
	for body in $HitBox.get_overlapping_bodies():
		if body is TileMap:
			var tilemap: TileMap = body
			var local_pos = tilemap.to_local($HitBox.global_position)
			var cell = tilemap.local_to_map(local_pos)
			
			var data = tilemap.get_cell_tile_data(0,cell)
			
			if data:
				var tile_type = data.get_custom_data("type")
				if tile_type == "_lava":
					Global.lives_lost(1) ## this aint working, why?

	
	
	
