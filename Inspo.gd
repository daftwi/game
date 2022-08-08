extends Control

onready var text = get_parent().get_node("Dialogue").intro

var dialogue_index = 0
var finished
var active

func _ready():
	$TextBox.visible = false
	if PlayerVariables.first_ent["Bedroom"]:
		PlayerVariables.first_ent["Bedroom"] = false
		load_dialogue()
	if !PlayerVariables.pay["ForthTask"] and !PlayerVariables.tasks_completed["ForthTask"]:
		text = get_parent().get_node("Dialogue").forth_task
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
	

func _on_CatOnBed_input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton:
		if event.is_pressed():
			if PlayerVariables.first_clicked_bedroom:
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_CatOnChair_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom= false

func _on_Orb_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Candles_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Picture_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Medal_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Plants_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Easel_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Matryoshka_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Skull_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Couldron_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Crystals_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Tea_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Clock_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Ingridients_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_MoonPhase_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false


func _on_Map_input_event(viewport, event, shape_idx):
	if PlayerVariables.first_clicked_bedroom:
		if event is InputEventMouseButton:
			if event.is_pressed():
				text = get_parent().get_node("Dialogue").inspo
				dialogue_index = 0
				load_dialogue()
				PlayerVariables.first_clicked_bedroom = false
