extends Position2D

signal spawned(spawn)

export(PackedScene) var spawning_scene

func _ready():
	spawn()
	
func spawn():
	var spawning = spawning_scene.instance()
	
	add_child(spawning)
	spawning.set_as_toplevel(true)
	spawning.global_position = global_position
	
	emit_signal('spawned', spawning)
	return spawning


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
