extends Area2D


export(String, FILE, "*.tscn") var scene

var move = false

func _process(delta: float) -> void:
	go()
	

func _on_Portal_body_entered(body: Node) -> void:
	print("see you")
	move = true
	
func go():
	if move == true:
		if Input.is_action_pressed("ui_up"):
			get_tree().change_scene(scene)
		
	
func _on_Portal_area_entered(area: Area2D) -> void:
	print("area")
