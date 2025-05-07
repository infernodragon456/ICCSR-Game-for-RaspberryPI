extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var audio_player = $AudioStreamPlayer2D	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func on_pressed() :
	if audio_player and not audio_player.playing:
		audio_player.play()
