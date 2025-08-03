

## will execute in the release build
class Runtime:
	func assert_array(x : int , upper_x: int)-> void:
		if x < 0 || x > upper_x:
			OS.alert("out of range INDEX = %s" % x)
		pass
	

## will execute in the debug build
class Debugtime:
	func assert_array(x : int , upper_x: int)-> void:
		assert( !(x < 0 || x > upper_x),"out of range" )
		pass
