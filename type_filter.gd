extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_check_item("Quiz", 0)
	add_check_item("Assignment", 1)
	add_check_item("Paper", 2)
	add_check_item("Exam", 3)
	index_pressed.connect(_index_pressed)
	
	


func _index_pressed(index: int):
	# need to uncheck all other categories (Type filter, Due date filter)
	if index == 0:
		print("Quiz was pressed")
		if (is_item_checked(0)):
			set_item_checked(0, false)
		else: 
			set_item_checked(0, true)
	
	if index == 1:
		print("Assignment was pressed")
		if (is_item_checked(1)):
			set_item_checked(1, false)
		else: 
			set_item_checked(1, true)
			
	if index == 2:
		print("Paper was pressed")
		if (is_item_checked(2)):
			set_item_checked(2, false)
		else: 
			set_item_checked(2, true)
		
	if index == 3:
		print("Exam was pressed")
		if (is_item_checked(3)):
			set_item_checked(3, false)
		else: 
			set_item_checked(3, true)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
