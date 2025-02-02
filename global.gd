extends Node

var savedata_path : String = "res://savedata.txt"
var tasks : Array[Task] = []
var classes : Array[ClassClass]

var cur_scene_root
var cur_spawner

var icon = Icon.new()

func load_savedata() -> void:
	var file : FileAccess = FileAccess.open(self.savedata_path, FileAccess.READ)
	var content : String = file.get_as_text()
	var task_strings : PackedStringArray = content.split("\n\n")
	var class_strings : PackedStringArray = task_strings[0].split("\n")
	
	

	
	for c in class_strings:
		if c != "":
			self.add_class(ClassClass.get_class_from_string(c))
		
	
	for task in task_strings.slice(1):
		if task != "":
			self.tasks.append(Task.get_task_from_string(task.rstrip("\n")))


func save_tasks() -> void:
	print("test")
	var file = FileAccess.open(self.savedata_path, FileAccess.WRITE)
	var content : String = ""
	
	for i in self.classes:
		content += str(i)
	content += '\n'
	
	for i in range(len(self.tasks)):
		content += str(self.tasks[i])
		if i != len(self.tasks) - 1:
			content += "\n"
			
	file.store_string(content)

func add_class(new_class : ClassClass) -> void:
	self.classes.append(new_class)

func add_task(new_task : Task) -> void:
	tasks.append(new_task)
	if cur_spawner:
		cur_spawner.new_task(new_task)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.load_savedata()
	icon.create_icon_obj()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		self.save_tasks()
