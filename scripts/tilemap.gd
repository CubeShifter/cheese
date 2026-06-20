extends TileMapLayer

var tiles = []

func _ready() -> void:
	make_map()
# Called when the node enters the scene tree for the first time.
func make_map():
	for i in range(300):
		tiles.append([])
		for j in range(100):
			var num = randf()
			if num > 0.7:
				set_cell(Vector2i(j-50,i),0,Vector2i(1,0))
				tiles[i].append(5)
			else:
				set_cell(Vector2i(j-50,i),0,Vector2i(0,0))
				tiles[i].append(2)
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
