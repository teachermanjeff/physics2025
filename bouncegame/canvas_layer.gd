extends CanvasLayer
var score = 0
var lives = 10
func _ready():
	pass
func _process(delta):
	if Input.is_action_just_pressed("left click"):
		lives = lives - 1
	$Points.text = "Points: " + str(score)
	$balls.text = "Balls " + str(lives)


func _on_normal_peg_addpoint() -> void:
	score = score + 100
