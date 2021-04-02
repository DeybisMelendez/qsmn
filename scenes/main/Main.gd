extends Control

onready var Yes = $Yes
onready var No = $No
onready var Question = $Question

func _ready():
	Yes.connect("button_up", self, "yes_pressed")
	No.connect("button_down", self, "no_pressed")
	No.connect("mouse_entered", self, "mouse_entered_no")

func no_pressed():
	mouse_entered_no()

func yes_pressed():
	Yes.hide()
	No.hide()
	Question.text = "¡Lo sabía! Te quiero mucho <3"

func mouse_entered_no():
	var x = rand_range(0,rect_size.x - No.rect_size.x)
	var y = rand_range(0,rect_size.y - No.rect_size.y)
	No.rect_position = Vector2(x, y)
