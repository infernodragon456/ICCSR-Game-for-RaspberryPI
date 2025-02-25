extends Control

@onready var grid_container = $GridContainer
var grid_data = [
	{"id": 1, "name": "Item 1", "color": Color(1,0,0)},
	{"id": 2, "name": "Item 2", "color": Color(0,1,0)},
	{"id": 3, "name": "Item 3", "color": Color(0,0,1)},
]
# Called when the node enters the scene tree for the first time.
func _ready():
	create_grid_items()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_item_click(item_id: int):
	print("Clicked item : ", item_id)
	
func create_grid_items():
	# First, clear any existing children
	for child in grid_container.get_children():
		child.queue_free()
	
	# Create new grid items
	for item_data in grid_data:
		var grid_item = preload("res://scenes/grid_item.tscn").instantiate()
		grid_item.name = str(item_data.id)
		
		# Update node paths to match scene structure
		var color_rect = grid_item.get_node("ColorRect")
		color_rect.color = item_data.color
		
		var button = color_rect.get_node("Button")
		button.text = item_data.name
		
		# Button is at root level
		print("Connecting button for item: ", item_data.id)  # Debug print
		print("Button: ", button)
		button.pressed.connect(_on_item_click.bind(item_data.id))
		
		# Add to grid container
		grid_container.add_child(grid_item)
