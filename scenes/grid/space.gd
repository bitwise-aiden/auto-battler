class_name GridSpace extends Node2D


# Public variables

var coord : Vector2i :
	set(p_value):
		coord = p_value

		position = Constants.coord_to_position(coord)
