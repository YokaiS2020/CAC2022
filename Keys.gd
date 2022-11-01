extends RigidBody2D

var Key1 = false
var Key2 = false
var Key3 = false
var Key4 = false
var Key5 = false
var Key6 = false
var Key7 = false
var Key8 = false
var Key9 = false
var Key0 = false
var InputtedNum = ""
var TVal="0006"
var PuzzlesNeeded = 1
func _ready():
	$Color.hide()
	$Color1.hide()
	$EndScreen.hide()
func _physics_process(delta):
	if InputtedNum.length()==4:
		if InputtedNum==TVal:
			print("Correct Combination")
			$Color.hide()
			$Color1.show()
			TVal="Completed"
		else:
			$Color1.hide()
			$Color.show()
		InputtedNum=""
	if InputtedNum.length()==1:
		$Color.hide()
		$Color1.hide()
	if TVal== "Completed":
		$EndScreen.show()
	if Key1 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="1"
		print(InputtedNum)
	if Key2 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="2"
		print(InputtedNum)
	if Key3 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="3"
		print(InputtedNum)
	if Key4 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="4"
		print(InputtedNum)
	if Key5 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="5"
		print(InputtedNum)
	if Key6 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="6"
		print(InputtedNum)
	if Key7 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="7"
		print(InputtedNum)
	if Key8 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="8"
		print(InputtedNum)
	if Key9 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="9"
		print(InputtedNum)
	if Key0 == true && Input.is_action_just_pressed("Click"):
		InputtedNum+="0"
		print(InputtedNum)

func _on_Camera2D_CurrentSceneNumber(Scene):
	
	if Scene != 0:
		InputtedNum = ""
	
func _on_1_mouse_entered():
	Key1=true
	
	
func _on_2_mouse_entered():
	Key2=true


func _on_3_mouse_entered():
	Key3=true


func _on_4_mouse_entered():
	Key4=true


func _on_5_mouse_entered():
	Key5=true


func _on_6_mouse_entered():
	Key6=true


func _on_7_mouse_entered():
	Key7=true


func _on_8_mouse_entered():
	Key8=true


func _on_9_mouse_entered():
	Key9=true


func _on_0_mouse_entered():
	Key0=true


func _on_1_mouse_exited():
	Key1=false

func _on_2_mouse_exited():
	Key2=false

func _on_3_mouse_exited():
	Key3=false
	
func _on_4_mouse_exited():
	Key4=false
	
func _on_5_mouse_exited():
	Key5=false


func _on_6_mouse_exited():
	Key6=false


func _on_7_mouse_exited():
	Key7=false


func _on_8_mouse_exited():
	Key8=false


func _on_9_mouse_exited():
	Key9=false


func _on_0_mouse_exited():
	Key0=false



