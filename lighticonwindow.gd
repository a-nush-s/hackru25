extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_diamond_button_pressed() -> void:
	self.hide() # Replace with function body.

func _on_heart_button_pressed() -> void:
	self.hide() # Replace with function body.


func _on_smiley_button_pressed() -> void:
	self.hide() # Replace with function body.


func _on_spiral_button_pressed() -> void:
	self.hide() # Replace with function body.


func _on_star_button_pressed() -> void:
	self.hide() # Replace with function body.


func _on_cloud_button_pressed() -> void:
	self.hide() # Replace with function body.



func _on_light_icon_select_pressed() -> void:
	if self.visible:
		self.hide()
	else:
		self.show() # Replace with function body.
