extends Node2D

var shouldModulate := false

func _ready():
	visible = false   # hidden at start

func _process(delta):
	if shouldModulate:
		visible = true
		var opacity = (sin(Time.get_ticks_msec() * 0.002) + 1) / 2
		modulate.a = opacity
	else:
		visible = false
		modulate.a = 1
