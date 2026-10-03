extends player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(dt: float) -> void:
	var input_direction := Vector2.ZERO
	
	# controls
	var right := Input.is_key_pressed(KEY_D)
	var left := Input.is_key_pressed(KEY_A)
	var jump := (Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_SPACE))
	
	if right:
		input_direction.x += 1
	if left:
		input_direction.x -= 1
	if jump and is_on_floor():
		velocity.y -= jump_power
		
	input_direction = input_direction.normalized()
	
	#gravity
	if not is_on_floor():
		velocity.y += gravity * dt
	
	velocity.x = lerp(speed.x, input_direction.x * acceleration, dt*7)
	move_and_slide()
	
	speed = velocity
	pass
