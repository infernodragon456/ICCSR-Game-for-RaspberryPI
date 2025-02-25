extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	match name:
		"Button1":
			print("Button1 was pressed")
		"Button2":
			print("Button2 was pressed")
		"Button3":
			print("Button3 was pressed")
		"Button4":
			print("Button4 was pressed")
		"Button5":
			print("Button5 was pressed")
			#get_tree().change_scene_to_file("res://scenes/choose_letter.tscn")
		_:
			print("Unknown button pressed: ", name)
