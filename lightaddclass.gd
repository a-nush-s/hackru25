extends Control

@onready var color_picker : ColorPickerButton = $ColorPickerButton
@onready var name_input : LineEdit = $NameInput

	
func _on_exit_pressed() -> void:
	self.hide()
  
func _on_add_task_button_pressed() -> void:
	self.hide()
	var new_class : ClassClass = ClassClass.new()
	
	new_class.set_class(self.name_input.text, self.color_picker.color)
	Global.add_class(new_class)


func _on_addclassbtn_2_pressed() -> void:
	self.show() # Replace with function body.
