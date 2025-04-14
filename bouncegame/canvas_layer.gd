extends CanvasLayer
var score = 0
var lives = 10
func _ready():
	$Points.text = "Points: " + str(score)
	$balls.text = "Balls " + str(lives)
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("left click"):
		lives = lives - 1
