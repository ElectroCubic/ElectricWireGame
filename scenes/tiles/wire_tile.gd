extends Area2D
class_name WireTile

@export var type: TileType
@export var rotation_time: float = 1.0

@export var top_detector: TileDetector
@export var right_detector: TileDetector
@export var bottom_detector: TileDetector
@export var left_detector: TileDetector

enum TileType {
	LINE,
	ELBOW,
	T_SHAPE,
	PLUS_SHAPE,
	CONNECTOR,
	SOURCE,
	POWER
}

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("LMB"):
		var tween := create_tween()
		tween.set_trans(Tween.TRANS_EXPO)
		tween.tween_property(self, "rotation_degrees", rotation_degrees + 90, rotation_time)
