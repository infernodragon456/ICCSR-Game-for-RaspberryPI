extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	pass # Replace with function body.


func _on_medium_pressed() -> void:
	var continue_button = get_node("../continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.


func _on_hard_pressed() -> void:
	var continue_button = get_node("../continue")  # Adjust the path if needed
	continue_button.disabled = true
	pass # Replace with function body.


func _on_easy_pressed() -> void:
	var continue_button = get_node("../continue")  # Adjust the path if needed
	continue_button.disabled = false
	pass # Replace with function body.
