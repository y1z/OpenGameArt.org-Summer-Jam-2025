extends Node2D

var grid_ref : Grid = null


func _ready() -> void:
	#grid_ref = Util.find_by_type(get_tree().root,typeof(Grid))
	for ch in get_parent().get_children() :
		print(is_instance_of(ch,Grid))
		print(ch.name)
		pass
	if grid_ref==null:
		push_error("Could not find grid")
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
