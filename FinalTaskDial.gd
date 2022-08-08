extends Control

onready var text = get_parent().get_node("FinalDial").final_dialogue

var dialogue_index = 0
var finished
var active
var c = 0

func _ready():
	$TextBox.visible = false
	if PlayerVariables.tasks_completed["FifthTask"]:
		text = get_parent().get_node("FinalDial").final_dialogue
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
				
	if $Button.text == "":
		$Button.visible = false
	else:
		$Button.visible = true
	if $Button2.text == "":
		$Button2.visible = false
	else:
		$Button2.visible = true

func load_dialogue():
	if dialogue_index < text.size():
		if (dialogue_index == 3 && PlayerVariables.conf["Library"]/10.0 == 1) || (dialogue_index == 4 && PlayerVariables.conf["Library"]/10.0 == 1 && PlayerVariables.conf["Bedroom"]/20.0 == 1 && PlayerVariables.conf["Bathroom"]/10.0 == 1 && PlayerVariables.conf["Desk"]/10.0 == 1) || (dialogue_index != 3 && dialogue_index != 4):
			active = true
			finished = false
				
			$TextBox.visible = true
			$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
			$TextBox/Label.text = text[dialogue_index]["Name"]
			$Button.text = text[dialogue_index]["Choices"][0]
			$Button2.text = text[dialogue_index]["Choices"][1]
				
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


func _on_Button_pressed():
	if $Button.text == "Yes!":
		get_tree().quit()


func _on_Button2_pressed():
	if $Button2.text == "No":
		$Button.text = ""
		$Button2.text = ""
		$TextBox.visible = false
