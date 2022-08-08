extends Control

var is_started = false
var game_won = false

onready var board = $GameView/Board
onready var overlay = $GameView/StartOverlay
onready var overlay_text = $GameView/StartOverlay/TextOverlay

func _ready():
	overlay.visible = true

func _on_Board_game_started():
	overlay.visible = false
	is_started = true
	game_won = false


func _on_Board_game_won():
	overlay_text.text = 'Nice Work!\n You have completed the first task!\n Click on the return button to continue quests\n (or you can click on the board to restart)'
	overlay.visible = true
	is_started = false
	game_won = true
	PlayerVariables.tasks_completed["FirstTask"] = true
	get_tree().change_scene("res://Computer.tscn")
