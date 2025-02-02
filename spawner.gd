extends Control

var light_mode_task_viewer = preload("res://lightmodetask.tscn")
var dark_mode_task_viewer  = preload("res://darkmodetask.tscn")

var count = 0
var viewer_distance = 60

@onready var vbox = $VBoxContainer

@export var is_dark : bool = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.cur_spawner = self
	for task in Global.tasks:
		self.new_task(task)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func new_task(to_add : Task):
	var new_viewer
	if is_dark:
		new_viewer = dark_mode_task_viewer.instantiate()
	else:
		new_viewer = light_mode_task_viewer.instantiate()
	
	vbox.add_child(new_viewer)
	new_viewer.position.y = count * viewer_distance
	print(new_viewer.position.y)
	count += 1
	new_viewer.render_task(to_add)
	
	
