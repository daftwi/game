extends Control

func _ready():
	$Label.text = String(PlayerVariables.inspo)

func _on_CatOnBed_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_CatOnChair_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_Orb_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Candles_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Picture_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Medal_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Plants_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Easel_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 2)


func _on_Matryoshka_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 10)


func _on_Skull_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Couldron_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Crystals_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Tea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 2)


func _on_Clock_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo - 1)


func _on_Ingridients_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_MoonPhase_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 4)


func _on_Map_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 2)
