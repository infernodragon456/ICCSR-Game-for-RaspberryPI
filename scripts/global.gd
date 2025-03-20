extends Node

# Global variables
var practice_mode: bool = false
var star_count: int = 0
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

func increment_star_count() -> void:
	star_count += 1
	print("Star count incremented to: ", star_count)
	
func reset_star_count() -> void:
	star_count = 0
	print("Star count reset to: ", star_count)
