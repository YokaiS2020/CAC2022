extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Rotate") :
			self.rotation_degrees-=2
			#emit_signal("rotate_pressed")
	
#	pass


#func _on_20TGear_rotate_pressed():
	
