extends Node2D

var server: TCPServer = TCPServer.new()
var client: StreamPeerTCP = null

func _ready():
	var port = 12345
	var err = server.listen(port)
	if err == OK:
		print("Server started on port", port)
	else:
		print("Failed to bind server: ", err)

func _process(_delta):
	if server.is_connection_available():
		client = server.take_connection()
		print("Client connected!")

	if client and client.get_available_bytes() > 0:
		var data := client.get_utf8_string(client.get_available_bytes())
		var coords := data.strip_edges().split(",")
		if coords.size() == 2:
			# Convert from normalized coordinates (-1 to 1) to screen coordinates
			var norm_x := float(coords[0])
			var norm_y := float(coords[1])
			
			# Get screen size
			var screen_size := get_viewport_rect().size
			
			# Convert normalized (-1 to 1) to screen coordinates
			# Map from (-1,1) to (0,screen_width/height)
			var x := int((norm_x + 1.0) * 0.5 * screen_size.x)
			var y := int((norm_y + 1.0) * 0.5 * screen_size.y)
			
			var click_position := Vector2(x, y)
			print("Normalized coords: (", norm_x, ",", norm_y, ") to screen coords: ", click_position)
			print("Final position: (", x, ",", y, "")
			var ev := InputEventMouseButton.new()
			ev.position = click_position
			ev.global_position = click_position
			ev.button_index = MOUSE_BUTTON_LEFT
			ev.pressed = true
			ev.double_click = false
			ev.factor = 1.0

			# Simulate mouse press
			get_viewport().push_input(ev)

			# Simulate mouse release shortly after
			await get_tree().create_timer(0.01).timeout
			ev.pressed = false
			get_viewport().push_input(ev)

			print("Simulated mouse click at:", click_position)
