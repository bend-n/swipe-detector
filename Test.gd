extends Node


func _ready():
	add_child(SwipeDetector.new())


func _input(event):
	if event is InputEventSwipe:
		print(event.direction)
