extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	self.color = Color(0, 0.392157, 0, 1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_color_theme_index_pressed(index):
	if index == 0:
		self.color = Color(0,0,0,1)
	elif index == 1:
		self.color = Color(1,1,1,1)
		
