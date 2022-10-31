extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var S = 0
signal rotate_pressed
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	if S == 1:
		if Input.is_action_pressed("Rotate") :
			self.rotation_degrees+=1
			emit_signal("rotate_pressed")





func _on_Camera2D_CurrentSceneNumber(Scene):
	
	S=Scene
