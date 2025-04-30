extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var audio_player = $AudioStreamPlayer2D	

func _on_pressed() -> void:
	if audio_player and not audio_player.playing:
		audio_player.play()
	disabled = true
