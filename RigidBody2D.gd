extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal rotate_pressed
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	if Input.is_action_pressed("Rotate"):
		self.rotation_degrees+=1
		emit_signal("rotate_pressed")
