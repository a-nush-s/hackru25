extends PopupMenu


# Called when the node enters the scene tree for the first time.
func _ready():
	add_radio_check_item("Dark Mode", 0)
	add_radio_check_item("Light Mode", 1)
	index_pressed.connect(_index_pressed)
	
	


func _index_pressed(index: int):
	# need to uncheck all other categories (Type filter, Due date filter)
	if index == 0:
		print("Dark Mode was pressed")
		if (is_item_checked(0)):
			set_item_checked(0, false)
		else: 
			set_item_checked(0, true)
			set_item_checked(1, false)
	
	if index == 1:
		print("Light Mode was pressed")
		if (is_item_checked(1)):
			set_item_checked(1, false)
		else: 
			set_item_checked(1, true)
			set_item_checked(0, false)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
