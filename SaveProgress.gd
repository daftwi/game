extends Area2D

var save_path = "C://Save/save.dat"

func _on_SaveProgress_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			var file = File.new()
			var error = file.open(save_path,File.WRITE)
			if error == OK:
				file.store_var(PlayerVariables.inspo)
				file.store_var(PlayerVariables.conf)
				file.store_var(PlayerVariables.scn)
				file.store_var(PlayerVariables.first_ent)
				file.store_var(PlayerVariables.first_clicked_bedroom)
				file.store_var(PlayerVariables.pay)
				file.store_var(PlayerVariables.first_enc_bathroom)
				file.store_var(PlayerVariables.first_enc_bedroom)
				file.store_var(PlayerVariables.first_enc_desk)
				file.store_var(PlayerVariables.first_enc_library)
				file.store_var(PlayerVariables.tasks_completed)
				file.store_var(PlayerVariables.buggs)
				file.store_var(PlayerVariables.buggs_found)
				file.close()
