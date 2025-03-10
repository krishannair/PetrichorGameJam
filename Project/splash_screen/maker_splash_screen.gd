class_name SplashScreen extends Control

@export var _time: float = 3
@export var _fade_time: float = 1

signal finished()

func start() -> void:
	modulate.a = 0
	show()
	var tween: Tween = create_tween()
	tween.connect("finished", _finish)
	tween.tween_property(self, "modulate:a", 1, _fade_time)
	tween.tween_interval(_time)
	tween.tween_property(self, "modulate:a", 0, _fade_time)
	
func _finish() -> void:
	emit_signal("finished")
	queue_free()
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
