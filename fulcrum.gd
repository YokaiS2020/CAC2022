extends Position2D

onready var _right_pos := $Right_pos
onready var _pivot := $fulcrum
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(_right_pos.p)
#	pass
