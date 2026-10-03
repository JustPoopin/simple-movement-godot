extends Node2D
@onready var border := $world_border


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var screen_size = get_viewport().get_visible_rect().size
	var width = screen_size.x
	var height = screen_size.y
	
	border.get_node("1").position = Vector2(width / 2, 0)
	border.get_node("2").position = Vector2(width / 2, height)
	border.get_node("3").position = Vector2(0, height / 2)
	border.get_node("4").position = Vector2(width, height / 2)
	
	border.get_node("1").scale = Vector2(width/20, .1)
	border.get_node("2").scale = Vector2(width/20, .1)
	border.get_node("3").scale = Vector2(.1, height/20)
	border.get_node("4").scale = Vector2(.1, height/20)
	
