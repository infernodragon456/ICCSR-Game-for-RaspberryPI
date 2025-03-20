extends Control
# Array to store all child nodes
var child_nodes: Array = []

# Function to get all child nodes
func get_all_child_nodes() -> Array:
	child_nodes.clear()
	_collect_children(self)
	return child_nodes

# Helper function to recursively collect children
func _collect_children(node: Node) -> void:
	for child in node.get_children():
		child_nodes.append(child)
		_collect_children(child)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	child_nodes = get_all_child_nodes()
	print(child_nodes)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in Global.star_count:
		child_nodes[i].visible = true
	pass
