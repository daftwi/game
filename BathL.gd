extends Control

func _ready():
	$Label.text = String(PlayerVariables.conf["Bathroom"]/10.0 * 100) + "%"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
