extends TextureButton

var pressed_once := false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed_once = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


@onready var audio_player = $AudioStreamPlayer2D	

func _on_pressed() -> void:
	pressed_once = true
	var hintbox = get_node("hintbox")
	hintbox.shouldModulate = false
	if audio_player and not audio_player.playing:
		audio_player.play()
	disabled = true
