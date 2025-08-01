extends Area2D
class_name TileDetector

@export_enum("Left", "Right", "Top", "Bottom") var orientation: String = "Left"

var parent_tile: WireTile = get_parent()

func _on_area_entered(area):
	if area is TileDetector:
		print(name,": ",area.orientation)
