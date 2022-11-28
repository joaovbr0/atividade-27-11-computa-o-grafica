tool
extends Button

export(String, FILE) var next_scane_path = ""
func _ready():
	pass


func _on_Iniciar_button_up():
	get_tree().change_scene("res://game/atividade piog pong.tscn")
