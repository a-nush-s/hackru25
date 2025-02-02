extends Control

@onready var name_input : LineEdit = $NameInput
@onready var select_class : OptionButton = $SelectClass
@onready var select_type : OptionButton = $SelectType
@onready var date_input : LineEdit = $DateInput
@onready var start_input : LineEdit = $StartInput
@onready var end_input : LineEdit = $EndInput
@onready var hyphen_label : Label = $Hyphen
@onready var add_task_button : Button = $AddTaskButton

func set_default():
	self.name_input.text = ""
	self.select_class.selected = 0
	self.select_type.selected = 0
	self.date_input.text = ""
	self.date_input.hide()
	self.start_input.text = ""
	self.start_input.hide()
	self.end_input.text = ""
	self.end_input.hide()
	self.hyphen_label.hide()
	self.add_task_button.hide()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Time.get_datetime_string_from_system(false))
	self.set_default()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_select_type_item_selected(index: int) -> void:
	if index == 0:
		self.date_input.hide()
		self.start_input.hide()
		self.end_input.hide()
		self.hyphen_label.hide()
		self.add_task_button.hide()
	elif 0 < index and index < 5:
		self.date_input.show()
		self.start_input.show()
		self.end_input.hide()
		self.hyphen_label.hide()
		self.start_input.placeholder_text = "Due Time"
		self.add_task_button.show()
	else:
		self.date_input.show()
		self.start_input.show()
		self.start_input.placeholder_text = "Start time"
		self.end_input.show()
		self.hyphen_label.show()
		self.add_task_button.show()


func _on_add_task_button_pressed() -> void:
	var new_name : String = self.name_input.text
	var new_class : String = self.select_class.get_item_text(self.select_class.get_selected_id())
	var new_type : String = self.select_type.get_item_text(self.select_type.get_selected_id())
	
	var date_split : PackedStringArray = self.date_input.text.split("/")
	var date_string : String = "%s-%s-%s" % [date_split[2], date_split[0], date_split[1]]
	var start_string : String = "%sT%s:00" % [date_string, self.start_input.text]
	var start_time : int = Time.get_unix_time_from_datetime_string(start_string)
	
	var end_time : int = start_time
	if self.end_input.visible:
		var end_string : String = "%sT%s:00" % [date_string, self.end_input.text]
		end_time = Time.get_unix_time_from_datetime_string(end_string)
	
	var new_task : Task = Task.new()
	new_task.set_task(new_name, new_class, new_type, start_time, end_time, false)
	Global.add_task(new_task)
	
	self.hide()
func _on_addtaskbtn_pressed() -> void:
	self.show()
func _on_exit_pressed() -> void:
	self.hide()
