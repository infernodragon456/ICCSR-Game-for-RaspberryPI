extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Global.practice_mode)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_singleplayer_pressed():
	get_tree().change_scene_to_file("res://scenes/choose_class.tscn")
