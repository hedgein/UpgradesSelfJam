extends CharacterBody2D

@onready var input_axis = Vector2.ZERO
@export var speed = 300





func _ready():
	pass

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	get_input_axis()
	move_and_slide()

func get_input_axis():
	input_axis.x = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	input_axis.y = int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	velocity = input_axis.normalized() * speed
