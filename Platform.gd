extends Node2D

func _process(_delta):
	var spots = $Spots.get_child_count()
	for i in $Spots.get_children():
		if i.occupied:
			spots -= 1
			print(spots)
	if spots == 0:
		PlayerVariables.tasks_completed["FifthTask"] = true
		get_tree().change_scene("res://Computer.tscn")


func _on_Retry_body_entered(body):
	if body == $PlayerPlatform:
		get_tree().change_scene("res://YouDied.tscn")
