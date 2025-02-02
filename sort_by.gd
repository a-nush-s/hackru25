extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_radio_check_item("Class", 0)
	#add_radio_check_item("Type", 1)
	add_radio_check_item("Due date", 2)
	#add_radio_check_item("Task A-Z", 3)
	index_pressed.connect(_index_pressed)
	
	


func _index_pressed(index: int):
	if index == 0:
		if (is_item_checked(0)):
			set_item_checked(0, false)
		else: 
			set_item_checked(0, true)
			set_item_checked(1, false)
			set_item_checked(2, false)
			set_item_checked(3, false)
			Global._sort_by_class()

	#if index == 1:
		#if (is_item_checked(1)):
			#set_item_checked(1, false)
		#else: 
			#set_item_checked(0, false)
			#set_item_checked(1, true)
			#set_item_checked(2, false)
			#set_item_checked(3, false)
		
	if index == 2:
		if (is_item_checked(2)):
			set_item_checked(2, false)
		else: 
			set_item_checked(0, false)
			set_item_checked(1, false)
			set_item_checked(2, true)
			set_item_checked(3, false)
			Global._sort_by_date()
			
		
	#if index == 3:
		#if (is_item_checked(3)):
			#set_item_checked(3, false)
		#else: 
			#set_item_checked(0, false)
			#set_item_checked(1, false)
			#set_item_checked(2, false)
			#set_item_checked(3, true)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
