extends Node2D

var pontoDir = 0
var pontoEsq = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pontoDir = 0
	pontoEsq = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"Pontos Dir".text = str(pontoDir)
	$"Pontos Esq".text = str(pontoEsq)


func _on_bola_ponto_dir():
	pontoDir+=1


func _on_bola_ponto_esq():
	pontoEsq+=1
