extends Button
var shouldModulate = true
var audio_player
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audio_player  = $AudioStreamPlayer2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Calculate a value between 0 and 1 using sine wave
	if (shouldModulate):
		var opacity = (sin(Time.get_ticks_msec() * 0.002) + 1) / 2
		
		# Apply opacity to button
		modulate.a = opacity
	else:
		modulate.a = 1

	


func _on_pressed() -> void:
	#Global.next_scene = "res://scenes/are_you_ready.tscn"
	shouldModulate = false
	if audio_player and not audio_player.playing:
		audio_player.play()
	
	focus_mode = FOCUS_NONE
	disabled = true
	pass # Replace with function body.
