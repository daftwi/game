extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if !PlayerVariables.pay["ForthTask"]:
		$Sprite.visible = false



func _on_FifthTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.pay["FifthTask"] == false and PlayerVariables.tasks_completed["FifthTask"] == false:
				get_tree().change_scene("res://Platform.tscn")
			if PlayerVariables.inspo >= 150 and PlayerVariables.pay["FifthTask"] and PlayerVariables.tasks_completed["ForthTask"]:
				PlayerVariables.inspo -= 150
				$Sprite.visible = false
				PlayerVariables.pay["FifthTask"] = false
