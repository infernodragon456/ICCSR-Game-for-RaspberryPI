extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Global.finished_round):
		visible = true
		await get_tree().create_timer(2.0).timeout
		
		Global.reset_star_count()
		Global.finished_round = false
		get_tree().change_scene_to_file(Global.next_scene)
		
	else:
		visible = false
	pass
