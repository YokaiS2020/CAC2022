extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var S1 = Vector2(515,277)
var S2 = Vector2(1750,277)
var S3 = Vector2(2985,277)
var SNumber = 1
var Scenes = [S1,S2,S3]
signal CurrentSceneNumber(Scene)
var Finished=true
# Called when the node enters the scene tree for the first time.
func _ready():
	self.position = Scenes[SNumber%3-1]
func _physics_process(delta):
	emit_signal("CurrentSceneNumber",SNumber%3)

	if Finished == true:
		if Input.is_action_just_pressed("Move Scene left"):
			SNumber-=1
			if (SNumber < 1):
				SNumber = 3
			self.position = Scenes[SNumber%3-1]
		if Input.is_action_just_pressed("Move Scene Right"):
			SNumber+=1
			if(SNumber > 3):
				SNumber = 1
			self.position = Scenes[SNumber%3-1]


				


