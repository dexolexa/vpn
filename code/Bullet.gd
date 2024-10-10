extends Area2D
var velocity: Vector2
var speed: int
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(0.3)

func _physics_process(delta: float) -> void:
	global_position += velocity * delta
	
func start(_position: Vector2, _rotation: float, _speed: int) -> void:
	global_position = _position
	rotation = _rotation
	speed = _speed
	velocity = Vector2.RIGHT.rotated(_rotation) * speed






func _on_timer_timeout():
	call_deferred("queue_free")


func _on_mouse_entered():
	get_tree().quit()
	print("HELLO")  # Quit the current instance of the application
