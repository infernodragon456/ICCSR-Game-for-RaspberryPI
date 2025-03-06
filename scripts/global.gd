extends Node

# Global variables
var practice_mode: bool = false

# You can add functions to modify these variables
func enable_practice_mode() -> void:
	practice_mode = true
	print("Practice mode enabled")
	
func disable_practice_mode() -> void:
	practice_mode = false
	print("Practice mode disabled")
	
func toggle_practice_mode() -> void:
	practice_mode = !practice_mode
	print("Practice mode toggled to: ", practice_mode) 