class_name InputEventSwipe
extends InputEventAction

var direction := Vector2.ZERO

func _init(dir: Vector2) -> void:
    direction = dir.snapped(Vector2(.1, .1))