class_name ClassClass extends Node

var classclass_color : Color
var classclass_name : String

func set_class(new_name : String, new_color : Color):
	self.classclass_color = new_color
	self.classclass_name = new_name

static func get_class_from_string(class_string : String) -> ClassClass:
	var output = ClassClass.new()
	var split = class_string.split("\t")
	output.set_class(split[0], Color.html(split[1]))
	return output

func _to_string() -> String:
	return "%s\t%s\n" % [self.classclass_name, self.classclass_color.to_html()]
