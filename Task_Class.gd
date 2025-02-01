class_name Task extends Node

var initiated: bool = false
var task_name: String
var task_class: String
var task_type: String
# Start endtime will be an int in unix time
var start_time: int 
var end_time: int

# Used after new task is created with Task.new() to set all the vars correctly
func set_task(task_name: String, task_class: String, task_type: String, start_time: int, end_time: int):
	self.task_name = task_name
	self.task_class = task_class
	self.task_type = task_type
	self.start_time = start_time
	self.end_time = end_time
	self.initiated = true

# Converts to a string (will be used for save file)
func _to_string() -> String:
	var output: String = ""
	if self.initiated:
		output = "%s\n\t%s\n\t%s\n\t%s\n\t%s\n" % [self.task_name, self.task_class, self.task_type, self.start_time, self.end_time]
	return output

# Converts the string back to a task object (used for loading)
static func get_task_from_string(task_string: String) -> Task:
	var split : PackedStringArray = task_string.split("\n\t")
	var new_task: Task = Task.new()
	new_task.set_task(split[0], split[1].lstrip("\t"), split[2].lstrip("\t"), int(split[3].lstrip("\t")), int(split[4].lstrip("\t")))
	
	return new_task
