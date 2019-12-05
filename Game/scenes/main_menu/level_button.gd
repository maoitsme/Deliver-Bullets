extends TextureButton

export var level := 1
export var level_scene := "res://scenes/test_world.tscn"
onready var container = get_parent().get_parent().get_parent()

func _ready():
	$Label.text = str(level)

func _on_level_button_pressed():
	container.scene_to_change = level_scene
	container.get_node("anim").play("despawn")