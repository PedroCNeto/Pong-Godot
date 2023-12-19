extends CharacterBody2D


const SPEED = 300.0
@export var player = "player1"

# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction
	if player == 'player1':
		direction = get_movement(KEY_W, KEY_S)
	else:
		direction = get_movement(KEY_UP, KEY_DOWN)
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)


	move_and_slide()

func get_movement(up, down):
	if Input.is_key_pressed(up): return -1
	elif Input.is_key_pressed(down): return 1

func _on_baixo_body_entered(body):
	return true

