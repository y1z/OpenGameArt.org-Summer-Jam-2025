extends Node
# Util


func find_by_type (root_node:Window, type:Variant) -> Variant:
	var result : Node2D = null;
	
	for i in root_node.get_children():
		if typeof(i) == typeof(type):
			result = i
			break;
			
	return  result
	pass
