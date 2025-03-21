extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Global.star_count == 5):
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/result.tscn")

func _on_pressed() -> void:
	disabled = true
