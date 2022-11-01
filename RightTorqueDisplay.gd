extends RichTextLabel
var can_drop = true

export var drop_rate = 0.5
# Declare member variables here. Examples:

var torque = 98 * 1.72#3.18809
var added = 0
var removed = 0

# Called when the node enters the scene tree for the first time.
func _process(delta):
	set_text("Torque on Right Side: " + str(torque))
	if Input.is_action_just_pressed("Add_Right_Stone") and can_drop:
		torque += (19.6 * 4.59)
		added += 1
		can_drop = false
		yield(get_tree().create_timer(drop_rate),"timeout")
		can_drop = true
	if Input.is_action_just_pressed("Remove_Right_Stone") and removed < added:
		torque -= (19.6 * 4.59)
		removed += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
