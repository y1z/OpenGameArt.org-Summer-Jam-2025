extends Node2D
class_name Grid

const DEFAULT_ROWS:int = 32
const DEFAULT_COLUMNS:int = 32

@export_group("VARIABLES")

@export var rows :int = 0;
@export var columns :int  = 0;
@export var grid_size: Vector2 = Vector2(32,32)

var grid_area: Area2D;
var grid_rectangle: RectangleShape2D;

func _ready() -> void:
	grid_area = %GridArea
	grid_rectangle = %Shape.shape
	grid_rectangle.size = grid_size
	if rows < 2:
		rows = DEFAULT_ROWS

	if columns < 2:
		columns = DEFAULT_COLUMNS
	
	pass

func get_postion_in_grid(x:int, y:int) -> Vector2:
	assert(x > -1 && x <= rows)
	assert(y > -1 && y <= columns)
	var result :Vector2 = Vector2();
	var rect :Rect2 = grid_rectangle.get_rect()
	var delta :Vector2 = rect.end - rect.position
	var inverse_size : Vector2 = Vector2(1.0/rows, 1.0/columns);
	
	result.x = rect.position.x + position.x + (inverse_size.x * x * delta.x);
	result.y = rect.position.y + position.y + (inverse_size.y * y * delta.y)
	
	return result

	
	
	
	
	
