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


func _on_FirstTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo)


func _on_SecondTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo)


func _on_ThirdTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo)


func _on_ForthTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo)

func _on_FifthTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			$Label.text = String(PlayerVariables.inspo)
