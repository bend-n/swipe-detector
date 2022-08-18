extends Node
class_name SwipeDetector

export(float) var swipe_timeout := .5  # only set this before `_ready` is called

onready var timer := Timer.new()
var swipe_start_position := Vector2() setget set_swipe_start_position


func _ready():
	add_child(timer)
	timer.wait_time = swipe_timeout
	timer.one_shot = true


func _unhandled_input(event: InputEvent) -> void:
	if not event is InputEventScreenTouch:
		return
	if event.pressed:  # press
		set_swipe_start_position(event.position)
	elif not timer.is_stopped():  # let go.
		_end_detection(event.position)


func set_swipe_start_position(position: Vector2) -> void:
	swipe_start_position = position
	timer.start()


func _end_detection(position: Vector2) -> void:
	timer.stop()
	var direction := (position - swipe_start_position).normalized()
	Input.parse_input_event(InputEventSwipe.new(direction))
