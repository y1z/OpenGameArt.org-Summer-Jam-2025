extends Node

## will execute in the release build
class Runtime:
	static func assert_array(x : int , upper_x: int)-> void:
		if x < 0 || x > upper_x:
			OS.alert("out of range INDEX = %s" % x)
		pass
	

## will execute in the debug build
class Debugtime:
	static func assert_array(x : int , upper_x: int)-> void:
		assert( !(x < 0 || x > upper_x),"out of range" )
		pass


func dprint(arg : Variant) -> void:
	if !OS.is_debug_build(): return;
	
	print(arg)
	pass
