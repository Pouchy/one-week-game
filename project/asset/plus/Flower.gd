extends StaticBody2D

var health = 5 setget set_health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func set_health():
	Player.connect("dead", self, "test")
	
func test():
	print("hi")
