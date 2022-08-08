extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Menu_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"] and !PlayerVariables.buggs_found["Computer"]:
					pass
			else:
				PlayerVariables.scn["Computer"] = false
				PlayerVariables.scn["Desk"] = true
				get_tree().change_scene("res://Desk.tscn")
