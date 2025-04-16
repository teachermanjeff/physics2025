extends Node2D

signal addpoint
@export var winning_peg_gen = 10
var chosen_winning_peg = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$winning.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	var peg_left = get_node("/root/playtest/cannon/HUD") 
	if body.is_in_group("balls"):
		emit_signal("addpoint")
		$Timer.start()
		if chosen_winning_peg == true:
			peg_left.winning_peg_left -= 1
			
func _on_timer_timeout():
	queue_free()

func _on_winning_hidden() -> void: # changing the normal peg 
	var peg_left = get_node("/root/playtest/cannon/HUD") 
	if randi_range(1,3) == 2:
		$winning.visible = true
		$normal.visible = false
		chosen_winning_peg = true
		peg_left.winning_peg_left += 1
