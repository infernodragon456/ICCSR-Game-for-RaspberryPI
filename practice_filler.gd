extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_practice_pressed():
	get_tree().change_scene_to_file("res://scenes/are_you_ready.tscn")
	

func _on_close():
	get_tree().change_scene_to_file("res://scenes/are_you_ready.tscn")
