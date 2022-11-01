extends StaticBody2D

const stone_path = preload('res://Stone.tscn')

var left_stone_array = []
var right_stone_array = []

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("Add_Left_Stone"):
		drop_left()
	if Input.is_action_just_pressed("Add_Right_Stone"):
		drop_right()
	if Input.is_action_just_pressed("Remove_Left_Stone"):
		remove_left()
	if Input.is_action_just_pressed("Remove_Right_Stone"):
		remove_right()
		

func drop_left():
	var stone_left = stone_path.instance()
	get_parent().add_child(stone_left)
	
	stone_left.position = $LeftStoneSpawner.global_position
	left_stone_array.append(stone_left)

func remove_left():
	get_parent().remove_child(left_stone_array.back())
	left_stone_array.remove(left_stone_array.size()-1)
	#get_child(ston).remove_child()
	
func drop_right():
	var stone_right = stone_path.instance()
	get_parent().add_child(stone_right)
	
	stone_right.position = $RightStoneSpawner.global_position
	right_stone_array.append(stone_right)
	
func remove_right():
	get_parent().remove_child(right_stone_array.back())
	right_stone_array.remove(right_stone_array.size()-1)




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
