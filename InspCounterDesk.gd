extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = String(PlayerVariables.inspo)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CatOnTable_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_CatWantOnBed_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_Drink_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Timer_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo - 1)


func _on_Books_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Pens_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_UnoPeno_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 2)


func _on_Note_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Plant_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Plan_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)
