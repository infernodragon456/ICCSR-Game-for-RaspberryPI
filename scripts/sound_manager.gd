extends Node

@onready var audio_player = $AudioStreamPlayer2D

func play_sound():
	if audio_player and not audio_player.playing:
		audio_player.play()
