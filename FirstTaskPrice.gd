extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if !PlayerVariables.pay["FirstTask"]:
		$Sprite.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FirstTaskPrice_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.pay["FirstTask"] == false and PlayerVariables.tasks_completed["FirstTask"] == false:
				get_tree().change_scene("res://GameScene.tscn")
			if PlayerVariables.inspo >= 150 and PlayerVariables.pay["FirstTask"]:
				PlayerVariables.inspo -= 150
				$Sprite.visible = false
				PlayerVariables.pay["FirstTask"] = false
