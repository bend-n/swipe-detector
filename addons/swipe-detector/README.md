# godot swipe detector

A script to detect directional swipes on the screen.

## Usage example

```gdscript
func _ready():
    add_child(SwipeDetector.new())

func _input(event):
    if event is InputEventSwipe:
        print(event.direction)
```
