extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.star_count == 5 and is_inside_tree():
		# Make sure we're in the tree before calling get_tree()
		var tree = get_tree()
		if tree:
			# We have a valid tree, so we can proceed
			var timer = tree.create_timer(1.0)
			await timer.timeout
			Global.finished_round = true
			
			timer = tree.create_timer(1.0)
			await timer.timeout
			tree.change_scene_to_file("res://scenes/result.tscn")

func _on_pressed() -> void:
	disabled = true
