extends Area2D

func _on_Orb_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			PlayerVariables.inspo += 3
			print(PlayerVariables.inspo)
			if PlayerVariables.first_enc_bedroom["Orb"]:
				PlayerVariables.conf["Bedroom"] += 1
				PlayerVariables.first_enc_bedroom["Orb"] = false
