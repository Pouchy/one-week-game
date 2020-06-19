extends KinematicBody2D


const UP = Vector2(0, -1)

var motion = Vector2.ZERO
var flower = FlowerStats

signal dead

export(String, FILE, "*.tscn") var scene

export var speed = 200
export var accel = 50
export var gravity = 20
export var jump = 400

func _physics_process(delta: float) -> void:
	$AnimationPlayer.play("Idle")
	motion.y += gravity
	if Input.is_action_pressed("ui_right"):
		motion.x += 10
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x -= 10
		$Sprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			motion.y = -jump
		
	move_and_slide(motion, UP)



func _on_Hurtbox_area_entered(area: Area2D) -> void:
	if area.name == "Hitbox":
		get_tree().change_scene(scene)
		flower.test(0.2)
