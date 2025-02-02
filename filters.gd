extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_submenu_item("Class", "ClassFilter", 0)
	add_submenu_item("Type", "TypeFilter", 1)
	add_submenu_item("Due Date", "DueDateFilter", 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
