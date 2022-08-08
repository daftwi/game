extends Node

var c = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$Bugg/Sprite.visible = false
	$Bugg2/Sprite.visible = false
	$Bugg3/Sprite.visible = false
	if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"]:
		$Bugg/Sprite.visible = true
		$Bugg2/Sprite.visible = true
		$Bugg3/Sprite.visible = true
	if PlayerVariables.buggs_found["Bedroom"]:
		$Bugg/Sprite.visible = false
		$Bugg2/Sprite.visible = false
		$Bugg3/Sprite.visible = false

func _on_Bugg_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.buggs -= 1
			$Bugg/Sprite.visible = false
			c += 1
			if c == 3:
				PlayerVariables.buggs_found["Bedroom"] = true
			if PlayerVariables.buggs == 0:
				PlayerVariables.tasks_completed["ThirdTask"] = true
				get_tree().change_scene("res://Computer.tscn")

func _on_Bugg2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.buggs -= 1
			$Bugg2/Sprite.visible = false
			c += 1
			if c == 3:
				PlayerVariables.buggs_found["Bedroom"] = true
			if PlayerVariables.buggs == 0:
				PlayerVariables.tasks_completed["ThirdTask"] = true
				get_tree().change_scene("res://Computer.tscn")

func _on_Bugg3_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.buggs -= 1
			$Bugg3/Sprite.visible = false
			c += 1
			if c == 3:
				PlayerVariables.buggs_found["Bedroom"] = true
			if PlayerVariables.buggs == 0:
				PlayerVariables.tasks_completed["ThirdTask"] = true
				get_tree().change_scene("res://Computer.tscn")
