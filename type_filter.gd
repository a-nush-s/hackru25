extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_check_item("Assignment", 0)
	add_check_item("Discussion Post", 1)
	add_check_item("Paper", 2)
	add_check_item("Project", 3)
	add_check_item("Quiz", 4)
	add_check_item("Midterm/Exam", 5)
	add_check_item("Project", 6)

	index_pressed.connect(_index_pressed)
	# assignment, discussion, paper, project, quiz, midterm/exam, final
	
	


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
			
	if index == 4:
		if (is_item_checked(4)):
			set_item_checked(4, false)
		else: 
			set_item_checked(4, true)
			
	if index == 5:
		if (is_item_checked(5)):
			set_item_checked(5, false)
		else: 
			set_item_checked(5, true)
			
	if index == 6:
		if (is_item_checked(6)):
			set_item_checked(6, false)
		else: 
			set_item_checked(6, true)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
