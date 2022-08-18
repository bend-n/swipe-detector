# godot swipe detector

[![version](https://img.shields.io/badge/3.x-blue?logo=godot-engine&logoColor=white&label=godot&style=for-the-badge)](https://godotengine.org "Made with godot")
[![package](https://img.shields.io/npm/v/@bendn/swipe-detector?label=version&style=for-the-badge)](https://www.npmjs.com/package/@bendn/swipe-detector)
<a href='https://ko-fi.com/bendn' title='Buy me a coffee' target='_blank'><img height='28' src='https://storage.ko-fi.com/cdn/brandasset/kofi_button_red.png' alt='Buy me a coffee'> </a>

A script to detect directional swipes on the screen.

## Usage example

```gdscript
func _ready():
    add_child(SwipeDetector.new())

func _input(event):
    if event is InputEventSwipe:
        print(event.direction)
```
