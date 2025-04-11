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
			var x := coords[0].to_int()
			var y := coords[1].to_int()
			print("Mouse Click Received at:", x, y)
