extends KinematicBody2D


#var room = preload("res://asset/plus/Room.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_Hurtbox_area_entered(area: Area2D) -> void:
	queue_free()
	print("hi")
	


#
#func _on_Hurtbox_body_entered(body: Node) -> void:
#	queue_free()
#	get_tree().change_scene_to(room)
#	print("hi")
