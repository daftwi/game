extends Area2D

var save_path = "C://Save/save.dat"

func _on_Continue_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			var file = File.new()
			if file.file_exists(save_path):
				var error = file.open(save_path, File.READ)
				if error == OK:
					print(file.get_var())
					file.close()
