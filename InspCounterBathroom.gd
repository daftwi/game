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


func _on_Towel_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 10)


func _on_TattooMan_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_Wooman_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 5)


func _on_Mirror_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 3)


func _on_Wardrobe_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Bottles_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Cucuretka_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 2)


func _on_Plants_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)


func _on_Wood_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo + 1)
