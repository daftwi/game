extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Menu_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"]:
				if !PlayerVariables.buggs_found["Desk"] and PlayerVariables.scn["Desk"]:
					pass
				elif !PlayerVariables.buggs_found["Bathroom"] and PlayerVariables.scn["Bathroom"]:
					pass
				elif !PlayerVariables.buggs_found["Bedroom"] and PlayerVariables.scn["Bedroom"]:
					pass
				elif !PlayerVariables.buggs_found["Library"] and PlayerVariables.scn["Library"]:
					pass
				else: 
					get_tree().change_scene("res://Menu.tscn")
			else:
				get_tree().change_scene("res://Menu.tscn")

