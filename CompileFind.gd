extends Control

onready var text = get_parent().get_node("DialogueCom").creature_first

var dialogue_index = 0
var finished
var active
var c = 0

func _ready():
	$TextBox.visible = false
	
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
		$TextBox/Label.text = text[dialogue_index]["Name"]
		
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

func _on_CreatureFirst_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_first
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureSecond_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_fifth
			load_dialogue()
			c += 1


func _on_CreatureThird_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_second
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureForth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_third
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureFifth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_forth
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureSixth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_first
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureSeventh_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_second
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureEighth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_third
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureNinth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_forth
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureTenth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_first
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureEleventh_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_second
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureTwelwth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_third
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")


func _on_CreatureThirteenth_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			dialogue_index = 0
			text = get_parent().get_node("DialogueCom").creature_forth
			load_dialogue()
			c += 1
			if c >= 13:
				PlayerVariables.tasks_completed["ForthTask"] = true
				get_tree().change_scene("res://Computer.tscn")
