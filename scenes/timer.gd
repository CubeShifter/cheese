extends Timer

@onready var rich_text_label: RichTextLabel = $"../CanvasLayer3/TextureRect2/RichTextLabel"

func _process(_delta: float) -> void:
	var seconds := int(time_left)
	var minutes := seconds / 60
	seconds %= 60
	
	rich_text_label.text = "[center]%d:%02d[/center]" % [minutes, seconds]
