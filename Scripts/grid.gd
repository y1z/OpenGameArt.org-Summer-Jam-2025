extends Node

const DEFAULT_ROWS:int = 32
const DEFAULT_COLUMNS:int = 32

@export_group("VARIABLES")

@export var rows :int = 0 ;
@export var columns :int  = 0;
var grid_area: Area2D;
var grid_shape: CollisionShape2D;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	grid_area = %GridArea
	grid_shape = %Shape
	if rows < 2:
		rows = DEFAULT_ROWS
		
	if columns < 2:
		columns = DEFAULT_COLUMNS
		
	pass # Replace with function body.

func get_postion_in_grid(x:int, y:int):
	assert(x > -1 && x <= rows)
	assert(y > -1 && y <= columns)
	grid_shape.shape.get_rect().size
	
	pass
	
