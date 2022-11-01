extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Start = Vector2(-735, 277)
var S1 = Vector2(515,277)
var S2 = Vector2(1750,277)
var SNumber = 0
var Scenes = [Start,S1,S2]

var Finished=true
# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = Scenes[0]
func _physics_process(delta):
	if Finished == true:
		if Input.is_action_just_pressed("Move Scene left"):
			SNumber-=1
			if(SNumber==-1):
				SNumber=2
			self.position = Scenes[SNumber]
		
			
		if Input.is_action_just_pressed("Move Scene Right") && SNumber<=2:
			SNumber+=1
			if(SNumber==3):
				SNumber=0
			self.position = Scenes[SNumber]


				


func _on_4_mouse_entered():
	pass # Replace with function body.


func _on_5_mouse_entered():
	pass # Replace with function body.


func _on_6_mouse_entered():
	pass # Replace with function body.


func _on_7_mouse_entered():
	pass # Replace with function body.


func _on_8_mouse_entered():
	pass # Replace with function body.


func _on_9_mouse_entered():
	pass # Replace with function body.


func _on_2_mouse_exited():
	pass # Replace with function body.


func _on_3_mouse_exited():
	pass # Replace with function body.


func _on_4_mouse_exited():
	pass # Replace with function body.


func _on_5_mouse_exited():
	pass # Replace with function body.


func _on_6_mouse_exited():
	pass # Replace with function body.


func _on_7_mouse_exited():
	pass # Replace with function body.


func _on_8_mouse_exited():
	pass # Replace with function body.
