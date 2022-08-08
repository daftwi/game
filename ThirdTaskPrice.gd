extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if !PlayerVariables.pay["ThirdTask"]:
		$Sprite.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ThirdTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.pay["ThirdTask"] == false and PlayerVariables.tasks_completed["ThirdTask"] == false:
				PlayerVariables.scn["Computer"] = false
				PlayerVariables.scn["Desk"] = true
				get_tree().change_scene("res://Desk.tscn")
			if PlayerVariables.inspo >= 150 and PlayerVariables.pay["ThirdTask"] and PlayerVariables.tasks_completed["SecondTask"]:
				PlayerVariables.inspo -= 150
				$Sprite.visible = false
				PlayerVariables.pay["ThirdTask"] = false
