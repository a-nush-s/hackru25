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
		smallDark = load("res://smalldarkicons/SDarkCloud.png")
		smallLight = load("res://smalllighticons/SLightCloud.png")
		largeDark = load("res://largedarkicons/LDarkCloud.png")
		largeLight = load("res://largelighticons/LLightCloud.png")
	if which==1:
		smallDark = load("res://smalldarkicons/Sdarkdiamond.png")
		smallLight = load("res://smalllighticons/Slightdiamond.png")
		largeDark = load("res://largedarkicons/Ldarkdiamond.png")
		largeLight = load("res://largelighticons/Llightdiamond.png")
	if which==2:
		smallDark = load("res://smalldarkicons/SDarkHeart.png")
		smallLight = load("res://smalllighticons/Slightheart.png")
		largeDark = load("res://largedarkicons/LDarkHeart.png")
		largeLight = load("res://largelighticons/LLightHeart.png")
	if which==3:
		smallDark = load("res://smalldarkicons/Sdarksmiley.png")
		smallLight = load("res://smalllighticons/Slightsmiley.png")
		largeDark = load("res://largedarkicons/Ldarksmiley.png")
		largeLight = load("res://largelighticons/Llightsmiley.png")
	if which==4:
		smallDark = load("res://smalldarkicons/Sdarkspiral.png")
		smallLight = load("res://smalllighticons/Slightspiral.png")
		largeDark = load("res://largedarkicons/Ldarkspiral.png")
		largeLight = load("res://largelighticons/Llightspiral.png")
	if which==5:
		smallDark = load("res://smalldarkicons/Sdarkstar.png")
		smallLight = load("res://smalllighticons/Slightstar.png")
		largeDark = load("res://largedarkicons/Ldarkstar.png")
		largeLight = load("res://largelighticons/Llightstar.png")
	
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

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
