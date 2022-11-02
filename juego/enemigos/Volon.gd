extends Area2D

onready var detector_jugador = $DetectorJugador
onready var detector_pisoton = $DectorPisoton/Colisionador
onready var animacion = $AnimationPlayer2


func _on_DectorPisoton_body_entered(body):
	desactivar_colisionadores([detector_jugador, detector_pisoton])
	animacion.stop()
	animacion.play("morir")
	body.impulsar()


func _on_body_entered(body):
	body.respawn()


func desactivar_colisionadores(colisionadores):
	for colision in colisionadores:
		colision.set_deferred("disabled", true)
		colision.set_deferred("visible", false)
