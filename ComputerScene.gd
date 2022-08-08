extends Node

var c = 0

func _ready():
	if PlayerVariables.pay["FirstTask"] == false:
		$FirstTaskPrice/Sprite.visible = false
	if PlayerVariables.pay["FirstTask"]:
		$FirstTaskPrice/Sprite.visible = true
	if PlayerVariables.tasks_completed["FirstTask"]:
		$FirstTick.visible = true
	else:
		$FirstTick.visible = false
	if PlayerVariables.pay["SecondTask"] == false:
		$SecondTaskPrice/Sprite.visible = false
	if PlayerVariables.pay["SecondTask"]:
		$SecondTaskPrice/Sprite.visible = true
	if PlayerVariables.tasks_completed["SecondTask"]:
		$SecondTick.visible = true
	else:
		$SecondTick.visible = false
	if PlayerVariables.pay["ThirdTask"] == false:
		$ThirdTaskPrice/Sprite.visible = false
	if PlayerVariables.pay["ThirdTask"]:
		$ThirdTaskPrice/Sprite.visible = true
	if PlayerVariables.tasks_completed["ThirdTask"]:
		$ThirdTick.visible = true
	else:
		$ThirdTick.visible = false
	$Bugg/Sprite.visible = false
	$Bugg2/Sprite.visible = false
	if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"]:
		$Bugg/Sprite.visible = true
		$Bugg2/Sprite.visible = true
	if PlayerVariables.buggs_found["Computer"]:
		$Bugg/Sprite.visible = false
		$Bugg2/Sprite.visible = false
	if PlayerVariables.pay["ForthTask"] == false:
		$ForthTaskPrice/Sprite.visible = false
	if PlayerVariables.pay["ForthTask"]:
		$ForthTaskPrice/Sprite.visible = true
	if PlayerVariables.tasks_completed["ForthTask"]:
		$ForthTick.visible = true
	else:
		$ForthTick.visible = false
	if PlayerVariables.pay["FifthTask"] == false:
		$FifthTaskPrice/Sprite.visible = false
	if PlayerVariables.pay["FifthTask"]:
		$FifthTaskPrice/Sprite.visible = true
	if PlayerVariables.tasks_completed["FifthTask"]:
		$FifthTick.visible = true
		$ColorRect.visible = false
	else:
		$FifthTick.visible = false

func _on_Bugg_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.buggs -= 1
			c += 1
			if c == 2:
				PlayerVariables.buggs_found["Computer"] = true
			$Bugg/Sprite.visible = false
			if PlayerVariables.buggs == 0:
				PlayerVariables.tasks_completed["ThirdTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_Bugg2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.buggs -= 1
			c += 1
			if c == 2:
				PlayerVariables.buggs_found["Computer"] = true
			$Bugg2/Sprite.visible = false
			if PlayerVariables.buggs == 0:
				PlayerVariables.tasks_completed["ThirdTask"] = true
				get_tree().change_scene("res://Computer.tscn")
