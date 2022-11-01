extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$SecretCode.hide()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(abs(self.rotation_degrees) < 0.025):
		$SecretCode.show()
	else:
		$SecretCode.hide()
		
#	pass
