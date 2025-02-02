extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if button_pressed :
		$taskvisuals.render_task(Global.tasks[Global.tasks.size()-1])


func _on_pressed() -> void:
	pass # Replace with function body.
