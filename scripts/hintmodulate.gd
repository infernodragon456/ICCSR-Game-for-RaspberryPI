extends TextureButton


var shouldModulate = false

func _ready():
	shouldModulate = false
	visible = false   # hidden at start
	#disabled = true  # Button will not react
	mouse_filter = Control.MOUSE_FILTER_IGNORE

func _process(delta):
	if shouldModulate:
		visible = true
		var opacity = (sin(Time.get_ticks_msec() * 0.002) + 1) / 2
		modulate.a = opacity
	else:
		visible = false
		modulate.a = 1
