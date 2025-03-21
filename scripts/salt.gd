extends Button
var shouldModulate = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
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

@onready var audio_player = $AudioStreamPlayer2D	


func _on_pressed() -> void:
	shouldModulate = false
	if audio_player and not audio_player.playing:
		audio_player.play()
		
	disabled = true
	pass # Replace with function body.
