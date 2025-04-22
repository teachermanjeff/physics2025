extends CanvasLayer
var score = 0
var lives = 10
var winning_peg_left = 0
func _ready():
	pass
func _process(delta):

	$Points.text = "Points: " + str(score)
	$balls.text = "Balls " + str(lives)
	$pegs.text = "pegs: " + str(winning_peg_left)
	if winning_peg_left == 0:
		$winning_screen.visible = true
	else:
		$winning_screen.visible = false
func _on_normal_peg_addpoint() -> void:
	score = score + 100
