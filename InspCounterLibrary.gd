extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = String(PlayerVariables.inspo)

func _on_Cat_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_CatOrange_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_CanOnStairs_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_OwlWithAHat_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_ChillOwl_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_CatSleeping_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_HigherOwlWithAHat_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_MainBook_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 10)


func _on_Table_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Globe_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.first_enc_library["Globe"]:
				$Label.text = String(PlayerVariables.inspo + 100)
