extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_check_item("Not due soon", 0)
	add_check_item("Due Soon", 1)
	add_check_item("Due Within 24 Hours", 2)
	add_check_item("Overdue", 3)
	index_pressed.connect(_index_pressed)
	
	


func _index_pressed(index: int):
	# need to uncheck all other categories (Type filter, Due date filter)
	if index == 0:
		if (is_item_checked(0)):
			set_item_checked(0, false)
		else: 
			set_item_checked(0, true)
	
	if index == 1:
		if (is_item_checked(1)):
			set_item_checked(1, false)
		else: 
			set_item_checked(1, true)
	
	if index == 2:
		if (is_item_checked(2)):
			set_item_checked(2, false)
		else: 
			set_item_checked(2, true)
		
	if index == 3:
		if (is_item_checked(3)):
			set_item_checked(3, false)
		else: 
			set_item_checked(3, true)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
