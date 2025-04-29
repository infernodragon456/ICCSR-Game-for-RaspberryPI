extends Panel
var audio_player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audio_player = $AudioStreamPlayer2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_salt_pressed() -> void:
	audio_player.play()
	visible = true
	Global.increment_star_count()
	await get_tree().create_timer(1.0).timeout
	visible = false
	Global.finished_round = true
	Global.star_count = 3
	pass # Replace with function body.
