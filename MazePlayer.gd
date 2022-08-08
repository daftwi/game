extends KinematicBody2D

var speed = 10

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("maze_left"):
		vel.x -= speed
	elif Input.is_action_pressed("maze_right"):
		vel.x += speed
	elif Input.is_action_pressed("maze_up"):
		vel.y -= speed
	elif Input.is_action_pressed("maze_down"):
		vel.y += speed
	else:
		vel.x = 0
		vel.y = 0
		
	move_and_slide(vel, Vector2.UP)
	
	var collision = move_and_collide(vel * delta * 10)
	if collision:
		vel= vel.bounce(collision.normal)


func _on_YouWonBox_body_entered(body):
	PlayerVariables.tasks_completed["SecondTask"] = true
	get_tree().change_scene("res://Computer.tscn")


func _on_DeathTrap_body_entered(body):
	get_tree().change_scene("res://YouDied.tscn")
