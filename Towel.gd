extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Towel_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.inspo += 10
			print(PlayerVariables.inspo)
			if PlayerVariables.first_enc_bathroom["Towel"]:
				PlayerVariables.conf["Bathroom"] += 1
				PlayerVariables.first_enc_bathroom["Towel"] = false
