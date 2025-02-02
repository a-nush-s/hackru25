extends Control

@onready var task_name_label : Label = $TaskName
@onready var class_name_label : Label = $ClassName
@onready var type_name_label : Label = $TypeName
@onready var due_date_label : Label = $Date
@onready var start_time_label : Label = $StartTime
@onready var end_time_label : Label = $EndTime

@onready var checkbutton : CheckButton = $CheckButton

@onready var overdue_img : Sprite2D = $OverdueImg
@onready var today_img : Sprite2D = $TodayImg
@onready var soon_img : Sprite2D = $SoonImg



func render_task(to_show : Task) -> void:
	# All the text nonsense
	self.task_name_label.text = to_show.task_name
	self.class_name_label.text = to_show.task_class
	self.type_name_label.text = to_show.task_type
	
	var startinfo : Dictionary = Time.get_datetime_dict_from_unix_time(to_show.start_time)
	self.due_date_label.text = "%d/%d/%d" % [startinfo["month"], startinfo["day"], startinfo["year"]]
	self.start_time_label.text = "%02d:%02d" % [startinfo["hour"], startinfo["minute"]]
	
	if to_show.start_time == to_show.end_time:
		self.end_time_label.hide()
	else:
		var endinfo : Dictionary = Time.get_datetime_dict_from_unix_time(to_show.end_time)
		self.start_time_label.text = "%02d:%02d" % [endinfo["hour"], endinfo["minute"]]
		
	# Make the checkbox remember if its been ticked
	self.checkbutton.button_pressed = to_show.completed
	
	var cur_time : int = int(Time.get_unix_time_from_system())
	var diff_time : int = to_show.start_time - cur_time
	if diff_time < 0: # Overdue
		self.overdue_img.show()
	elif diff_time < 86400: # 24 hours
		self.today_img.show()
	elif diff_time < 259200: # 72 hours
		self.soon_img.show()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
