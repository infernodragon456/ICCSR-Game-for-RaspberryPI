extends TextureButton


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
			Global.reset_star_count()
			tree.change_scene_to_file("res://scenes/result_kitchen.tscn")

@onready var audio_player = $AudioStreamPlayer2D	

func _on_pressed() -> void:
	#custom_minimum_size = Vector2(100, 100)
	#size = Vector2(100, 100)
	if audio_player and not audio_player.playing:
		audio_player.play()
	disabled = true
