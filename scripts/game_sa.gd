extends Button
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#
#func _on_sun_pressed() -> void:
	#Global.enable_sun()
#
#func _on_swing_pressed() -> void:
	#Global.enable_swing()
#
#func _on_school_pressed() -> void:
	#Global.enable_school()
#
#func _on_see_saw_pressed() -> void:
	#Global.enable_see_saw()
#
#func _on_slide_pressed() -> void:
	#Global.enable_slide()
	
@onready var audio_player = $AudioStreamPlayer2D	

func _on_pressed():
	if audio_player and not audio_player.playing:
		audio_player.play()
 
func _on_back():
	get_tree().change_scene_to_file("res://scenes/practice_filler.tscn")

func _on_back1():
	get_tree().change_scene_to_file("res://scenes/are_you_ready.tscn")

func _on_backresult():
	get_tree().change_scene_to_file("res://scenes/result.tscn")
	
func _on_backkitchenresult():
	get_tree().change_scene_to_file("res://scenes/result_kitchen.tscn")
	
func _on_backgardenresult():
	get_tree().change_scene_to_file("res://scenes/result_garden.tscn")
	
	
func _on_backroadresult():
	get_tree().change_scene_to_file("res://scenes/result_road.tscn")
	
	
func _on_backbeachresult():
	get_tree().change_scene_to_file("res://scenes/result_beach.tscn")
