extends Area2D
signal pontoEsq
signal pontoDir

var speed = 150
var direction = Vector2.ZERO
var dir = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	direction.x = [1 , -1].pick_random()
	direction.y = [1 , -1].pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position += direction * speed * delta * 1



func _on_cima_area_entered(area):
	direction.y *= -1

func _on_baixo_area_entered(area):
	direction.y *= -1

func reset_game():
	global_position.x = 350
	global_position.y = 175
	speed = 150
	_ready()
	
func mudar_lado():
	direction.x *= -1
	speed += 15

func _on_esquerda_area_entered(area):
	reset_game()
	pontoDir.emit()
	
func _on_direita_area_entered(area):
	reset_game()
	pontoEsq.emit()

func _on_body_entered(body):
	if body.get_name() == 'Raquete Dir': 
		mudar_lado()
	elif body.get_name() == 'Raquete Esq': 
		mudar_lado()
