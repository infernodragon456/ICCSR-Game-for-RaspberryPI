extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_1_pressed() -> void:
	var continue_button = get_node("../continue")  # Adjust the path if needed
	continue_button.disabled = false
	print(continue_button)
	
	
func _on_button_2_pressed() -> void:
	var continue_button = get_node("../continue")  # Adjust the path if needed
	continue_button.disabled = false
	print(continue_button)
	
	
func on_continue2_pressed():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func close():
	get_tree().change_scene_to_file("res://scenes/choose_letter.tscn")
