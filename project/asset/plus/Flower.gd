extends Area2D


var small = preload("res://asset/minus1-export.png")
var medium = preload("res://asset/middle-export.png")
var large = preload("res://asset/pluse1-export.png")



func _process(delta):
	anim()


func anim():
	var stat = get_node("FlowerStats")
	var image = get_node("Sprite")
	if stat.health < 3:
		image.set_texture(small)
	elif stat.health < 5:
		image.set_texture(medium)
	elif Input.is_action_pressed("big"):# key e
		image.set_texture(large)
	if Input.is_action_pressed("small"):# key a
		print(stat.health)
