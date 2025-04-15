extends CanvasLayer
var score = 0
var lives = 10
func _ready():
	pass
func _process(delta):
	var bottom_node = get_node("bottom")

	$Points.text = "Points: " + str(score)
	$balls.text = "Balls " + str(lives)


func _on_normal_peg_addpoint() -> void:
	score = score + 100
