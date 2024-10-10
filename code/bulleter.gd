extends CharacterBody2D
var rotato = 0
var popop = preload("res://scenes/bullet.tscn")
var torop = true

@onready var timerr = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bullet: Area2D = popop.instantiate()
	rotate(0.3)
	bullet.start(global_position, rotato, 300)
	rotato+=3
	if torop:
		$"..".add_sibling(bullet)
		timerr.start()
		torop = false
	#if Time.get_ticks_msec() > 0.8:
		
	if timerr.wait_time > 0.5 :
		timerr.wait_time -= 0.001
		print("UE")
	elif timerr.wait_time > 0.1:
		print("UU")
		timerr.wait_time -= 0.00025
	elif timerr.wait_time > 0.01:
		print("EU")
		timerr.wait_time -= 0.00001
		
	#("Player")

		
		
		
		


func _on_timer_timeout():
	torop = true
