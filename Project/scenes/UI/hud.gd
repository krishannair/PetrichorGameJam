class_name HUD extends CanvasLayer

var heart_container : HeartContainer
var crystal_container : CrystalContainer
var pause_menu

@export var max_hearts = 3
@export var max_crystals = 3

func _ready():
	heart_container = $HBoxContainer
	crystal_container = $crystalContainer
	pause_menu = $PauseMenu
	
func initialize():
	GameManager.GetPlayer().connect("HealthChanged", _on_player_health_changed)
	GameManager.GetLevel().connect("MorphChargesChanged", _on_morph)
	GameManager.GetLevel().connect("Menu", _open_menu)
	
	crystal_container.setMaxCrystals(GameManager.GetLevel().MaxMorphCharges/2)
	_on_morph(GameManager.GetLevel().morphCharges)
	
	heart_container.setMaxHearts(GameManager.GetPlayer().Health)
	heart_container.updateHearts(GameManager.GetPlayer().Health)

func _on_player_health_changed(health):
	heart_container.updateHearts(health)
	
func _on_morph(charges):
	crystal_container.updateCrystals(int(charges/2), (charges%2))

func _open_data_sheet():
	pause_menu.open_data()

func _close_data_sheet():
	pause_menu.next()

func _open_menu():
	_close_data_sheet()
	if (get_tree().paused):
		pause_menu.unpause()
	else:
		pause_menu.pause()
