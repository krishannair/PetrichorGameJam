extends Panel

@onready var sprite = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update(nums: int):
	if (nums==0): sprite.frame = 0
	elif (nums==1): sprite.frame = 1
	elif (nums==2): sprite.frame = 2
