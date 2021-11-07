extends KinematicBody2D


var speed = 500
var velocity = Vector2.ZERO
var gravity = 10.5;
var g_velocity  = 1
var jump_height = -272


func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if is_on_floor():
		g_velocity = 0
		if Input.is_action_pressed("ui_up"):
			g_velocity  = jump_height
	g_velocity += gravity;
	velocity.y += g_velocity;
	velocity = move_and_slide(velocity,Vector2(0,-1))




func _on_body_entered(body):
	get_tree().change_scene("res://Levels/mian2.tscn")








func _on_void_body_entered(body):
	get_tree().change_scene("res://Levels/game_over_2.tscn")
