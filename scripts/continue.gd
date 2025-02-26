extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_5_pressed() -> void:
	var continue_button = get_node("../Continue")  # Adjust the path if needed
	continue_button.disabled = false
	print(continue_button)
	
	


func _on_button_4_pressed() -> void:
	var continue_button = get_node("../Continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.


func _on_button_3_pressed() -> void:
	var continue_button = get_node("../Continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	var continue_button = get_node("../Continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.


func _on_button_1_pressed() -> void:
	var continue_button = get_node("../Continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.
	
func _on_continue1_pressed() :
	get_tree().change_scene_to_file("res://scenes/choose_letter.tscn")
	
