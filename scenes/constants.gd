extends Node


# Public constants

const grid_size : int = 11

const space_offset : float = grid_size * 0.5 - 0.5
const space_offset_vec2 : Vector2 = Vector2(space_offset, space_offset)
const space_size : float = 16.0

const tick_duration : float = 0.5


# Public methods

func coord_to_position(
	p_coord : Vector2i,
) -> Vector2:
	return (Vector2(p_coord) - space_offset_vec2) * space_size
