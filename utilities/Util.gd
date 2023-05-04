extends Object
class_name Util

static func get_formatted_string_from_number(value) -> String:
	var formated_string : String
	
	if value < 10:
		formated_string = "0" + str(value)
	else:
		formated_string = str(value)
	
	return formated_string
