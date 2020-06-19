extends StaticBody2D

export(float) var health = 5 #setget set_health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state()
	anim()

func state():
	if $FlowerStats.health < 3:
		$AnimationPlayer.play("smol")
	elif $FlowerStats.health < 5:
		$AnimationPlayer.play("middle")
	elif $FlowerStats.health >= 5:
		$AnimationPlayer.play("Grow")
		

func anim():
	if Input.is_action_pressed("ui_down"):
		$AnimationPlayer.play("smol")
