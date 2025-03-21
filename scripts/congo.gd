extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_any_pressed() -> void:
	visible = true
	Global.increment_star_count()
	await get_tree().create_timer(1.0).timeout
	visible = false
	pass # Replace with function body.


func _on_swing_pressed() -> void:
	pass # Replace with function body.


func _on_seesaw_pressed() -> void:
	pass # Replace with function body.
