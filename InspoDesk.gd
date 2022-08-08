extends Control

onready var text = get_parent().get_node("Dialogue").intro

var dialogue_index = 0
var finished
var active

func _ready():
	$TextBox.visible = false
	if PlayerVariables.first_ent["Desk"]:
		PlayerVariables.first_ent["Desk"] = false
		load_dialogue()
	if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"] and !PlayerVariables.buggs_found["Desk"]:
		text = get_parent().get_node("Dialogue").third_task
		load_dialogue()
	
func _physics_process(delta):
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogue()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true

func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		
		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
	else:
		$TextBox.visible = false
		finished = true
		active = false
	dialogue_index += 1
	

func _on_Tween_tween_completed(object, key):
	finished = true


func _on_Menu_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if !PlayerVariables.pay["ThirdTask"] and !PlayerVariables.tasks_completed["ThirdTask"] and !PlayerVariables.buggs_found["Desk"]:
				text = get_parent().get_node("Dialogue").havent_found
				load_dialogue()
