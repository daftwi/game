extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	if !PlayerVariables.pay["ForthTask"]:
		$Sprite.visible = false



func _on_ForthTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.pay["ForthTask"] == false and PlayerVariables.tasks_completed["ForthTask"] == false:
				PlayerVariables.scn["Computer"] = false
				PlayerVariables.scn["Bedroom"] = true
				get_tree().change_scene("res://Bedroom.tscn")
			if PlayerVariables.inspo >= 150 and PlayerVariables.pay["ForthTask"] and PlayerVariables.tasks_completed["ThirdTask"]:
				PlayerVariables.inspo -= 150
				$Sprite.visible = false
				PlayerVariables.pay["ForthTask"] = false
