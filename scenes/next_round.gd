extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _tokitchen():
	get_tree().change_scene_to_file("res://scenes/kitchen.tscn")
	
func _toroad():
	get_tree().change_scene_to_file("res://scenes/road.tscn")
	
func _tobeach():
	get_tree().change_scene_to_file("res://scenes/beach.tscn")
	
func _togarden():
	get_tree().change_scene_to_file("res://scenes/garden.tscn")
	
func _toletter():
	get_tree().change_scene_to_file("res://scenes/choose_letter.tscn")
