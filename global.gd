extends Node

var savedata_path : String = "res://savedata.txt"
var tasks : Array[Task] = []
signal generate_new_task

func load_savedata() -> void:
	var file : FileAccess = FileAccess.open(self.savedata_path, FileAccess.READ)
	var content : String = file.get_as_text()
	var task_strings : PackedStringArray = content.split("\n\n")
	
	for task in task_strings:
		self.tasks.append(Task.get_task_from_string(task.rstrip("\n")))


func save_tasks() -> void:
	var file = FileAccess.open(self.savedata_path, FileAccess.WRITE)
	var content : String = ""
	for i in range(len(self.tasks)):
		content += str(self.tasks[i])
		if i != len(self.tasks) - 1:
			content += "\n"
			
	file.store_string(content)


func add_task(new_task : Task) -> void:
	tasks.append(new_task)
	# TODO: Do stuff

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_savedata()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
