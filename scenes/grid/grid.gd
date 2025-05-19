class_name Grid extends Node2D


# Private constants

const __SCENE_SPACE : PackedScene = preload("res://scenes/grid/space.tscn")


# Private variables

@onready var __parent_spaces : Node2D = $parent_spaces
var __spaces : Dictionary[Vector2i, GridSpace]


# Lifecycle methods

func _ready() -> void:
	for x : int in Constants.grid_size:
		for y : int in Constants.grid_size:
			var coord : Vector2i = Vector2i(x, y)

			var space : GridSpace = __SCENE_SPACE.instantiate()
			__parent_spaces.add_child(space)

			space.coord = coord

			__spaces[coord] = space
