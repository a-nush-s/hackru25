class_name Icon extends Node

var which: int
var smallDark: Image
var smallLight: Image
var largeDark: Image
var largeLight: Image
var small: Image
var large: Image

@export var is_dark : bool = true

func create_icon_obj() -> void:
	self.which = 0
	self.set_images(self.which)

func set_images(which: int) -> void:
	if which==0:
		smallDark = Image.load_from_file("res://smalldarkicons/SDarkCloud.png")
		smallLight = Image.load_from_file("res://smalllighticons/SLightCloud.png")
		largeDark = Image.load_from_file("res://largedarkicons/LDarkCloud.png")
		largeLight = Image.load_from_file("res://largelighticons/LLightCloud.png")
	if which==1:
		smallDark = Image.load_from_file("res://smalldarkicons/Sdarkdiamond.png")
		smallLight = Image.load_from_file("res://smalllighticons/Slightdiamond.png")
		largeDark = Image.load_from_file("res://largedarkicons/Ldarkdiamond.png")
		largeLight = Image.load_from_file("res://largelighticons/Llightdiamond.png")
	if which==2:
		smallDark = Image.load_from_file("res://smalldarkicons/SDarkHeart.png")
		smallLight = Image.load_from_file("res://smalllighticons/Slightheart.png")
		largeDark = Image.load_from_file("res://largedarkicons/LDarkHeart.png")
		largeLight = Image.load_from_file("res://largelighticons/LLightHeart.png")
	if which==3:
		smallDark = Image.load_from_file("res://smalldarkicons/Sdarksmiley.png")
		smallLight = Image.load_from_file("res://smalllighticons/Slightsmiley.png")
		largeDark = Image.load_from_file("res://largedarkicons/Ldarksmiley.png")
		largeLight = Image.load_from_file("res://largelighticons/Llightsmiley.png")
	if which==4:
		smallDark = Image.load_from_file("res://smalldarkicons/Sdarkspiral.png")
		smallLight = Image.load_from_file("res://smalllighticons/Slightspiral.png")
		largeDark = Image.load_from_file("res://largedarkicons/Ldarkspiral.png")
		largeLight = Image.load_from_file("res://largelighticons/Llightspiral.png")
	if which==5:
		smallDark = Image.load_from_file("res://smalldarkicons/Sdarkstar.png")
		smallLight = Image.load_from_file("res://smalllighticons/Slightstar.png")
		largeDark = Image.load_from_file("res://largedarkicons/Ldarkstar.png")
		largeLight = Image.load_from_file("res://largelighticons/Llightstar.png")
	
func change_icon(which: int) -> void:
	self.which = which
	self.set_images(which)
	
func set_theme(theme : int):
	if theme == 0:
		small = smallDark
		large = largeDark
	if theme == 1:
		small == smallLight
		large == largeLight

#func _ready():
#	add_radio_check_item("Dark Mode", 0)
#	add_radio_check_item("Light Mode", 1)
#	index_pressed.connect(_index_pressed)
#	"res://class.gd"
	


#func _index_pressed(index: int):
	# need to uncheck all other categories (Type filter, Due date filter)
#	if index == 0:
#		set_item_checked(0, true)
#		set_item_checked(1, false)
#		get_tree().change_scene_to_file("res://buttonhomepage.tscn")
#		#change theme of icon to dark

	
#	if index == 1:
#		set_item_checked(1, true)
#		set_item_checked(0, false)
#		get_tree().change_scene_to_file("res://buttonhomepagelight.tscn")
		#change theme of icon to light
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
