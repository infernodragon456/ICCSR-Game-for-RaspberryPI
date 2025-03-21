extends Node

# Global variables
var next_scene: String = ""
var practice_mode: bool = false
var star_count: int = 0
var finished_round: bool = false
var sun_found: bool = false
var swing_found: bool = false
var school_found: bool = false
var see_saw_found: bool = false
var slide_found: bool = false
# You can add functions to modify these variables
func enable_practice_mode() -> void:
	practice_mode = true
	print("Practice mode enabled")

func enable_sun() -> void:
	sun_found = true
	print("Sun found")

func enable_swing() -> void:
	swing_found = true
	print("Swing found")

func enable_school() -> void:
	school_found = true
	print("School found")

func enable_see_saw() -> void:
	see_saw_found = true
	print("See-saw found")

func enable_slide() -> void:
	slide_found = true
	print("Slide found")

	
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
