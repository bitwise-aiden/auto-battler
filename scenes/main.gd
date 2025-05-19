class_name Main extends Node2D


# Private constants

var __SCENE_ENTITY : PackedScene = preload("res://scenes/entity/entity.tscn")


# Private variables

var __entity : Entity
var __time_elapsed : float


# Lifecycle methods

func _ready() -> void:
	__entity = __SCENE_ENTITY.instantiate()
	add_child(__entity)

	__entity.coord = Vector2i(5, 5)


func _process(
	p_delta: float,
) -> void:
	if __time_elapsed > Constants.tick_duration:
		__time_elapsed -= Constants.tick_duration

		__entity.coord.x = (__entity.coord.x + 1) % Constants.grid_size

	__time_elapsed += p_delta
