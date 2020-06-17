extends AnimatedSprite



onready var slime = get_node("Hurtbox")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_Hurtbox_body_entered(body: Node) -> void:
	if body.global_position.y > slime.global_position.y:
		return
	queue_free()
