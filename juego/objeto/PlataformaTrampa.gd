extends StaticBody2D


func _on_DetectorPersonaje_body_entered(_body):
	$DetectorPersonaje/CollisionShape2D.set_deferred("disable", true)
	$AnimationPlayer.play("caer")


func deshabilitar_colisionador():
	$Colisionador.set_deferred("disable", true)
