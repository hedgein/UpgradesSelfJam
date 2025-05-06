extends Node2D


@onready var bread_spawners = get_tree().get_nodes_in_group("Spawner")

@onready var bread_scene = preload("res://scenes/bread.tscn")

var rng = RandomNumberGenerator.new()

func _ready():
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("temp_spawn"):
		print("test")
		var random_spawn_index = rng.randi_range(0, 3)
		spawn_bread(random_spawn_index)

func spawn_bread(spawner_index: int):
	var bread = bread_scene.instantiate()
	bread.global_position = bread_spawners[spawner_index].global_position
	add_child(bread)
	
