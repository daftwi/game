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


func _on_Continue_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.scn["Bedroom"]:
				get_tree().change_scene("res://Bedroom.tscn")
			if PlayerVariables.scn["Desk"]:
				get_tree().change_scene("res://Desk.tscn")
			if PlayerVariables.scn["Bathroom"]:
				get_tree().change_scene("res://Bathroom.tscn")
			if PlayerVariables.scn["Library"]:
				get_tree().change_scene("res://Library.tscn")
