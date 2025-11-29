extends Button

func _on_Hint_pressed():
	var items = ["samosa", "sink", "sponge", "stove", "soucer"]

	# loop through each item in order
	for item_name in items:
		var item = get_node("../" + item_name)
		var hintbox = item.get_node("hintbox")

		if not item.pressed_once:
			hintbox.shouldModulate = true
			break 
