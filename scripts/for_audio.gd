extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().process_frame
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_practice():
	get_tree().change_scene_to_file("res://scenes/practice_filler.tscn")
	
 
