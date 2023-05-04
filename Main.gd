extends Node

const save_path : String = "res://exported/"
const file_name : String = "image" 
const file_extension : String = ".png"

var current_image : int = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		export_png_file()

func export_png_file():
	current_image += 1
	var image = get_viewport().get_texture().get_data()
	image.flip_y()
	return image.save_png(save_path + file_name + Util.get_formatted_string_from_number(current_image) + file_extension)
