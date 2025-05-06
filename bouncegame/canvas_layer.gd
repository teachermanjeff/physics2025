extends CanvasLayer
var score = 0
var lives = 10
var winning_peg_left = 0
var won = true
var lost = true
func _ready():
	$losing_screen.visible = false
	pass
func _process(delta):
	if lives <= 0 and lost == true:
		$Timer.start()
		lost = false
	$Points.text = "Points: " + str(score)
	$balls.text = "Balls " + str(lives)
	$pegs.text = "pegs: " + str(winning_peg_left)
	if winning_peg_left == 0:
		$winning_screen.visible = true
		won = true
	else:
		$winning_screen.visible = false
		won = false
func _on_normal_peg_addpoint() -> void:
	score = score + 100


func _on_try_again_pressed() -> void:
	get_tree().reload_current_scene()
	
func _on_timer_timeout() -> void:
	if won == false and lives <= 0:
		$losing_screen.visible = true
		$try_again.visible = true
