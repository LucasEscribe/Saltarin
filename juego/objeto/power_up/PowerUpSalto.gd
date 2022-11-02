extends "res://juego/objeto/power_up/PowerUpBase.gd"


func aplicar_power_up(body):
	body.cambiar_fuerza_salto()
