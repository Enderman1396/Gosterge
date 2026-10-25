extends ColorRect

@export var min_pos: Vector2 = Vector2(100, 100) # Sol üst köşe
@export var max_pos: Vector2 = Vector2(500, 400) # Sağ alt köşe

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var mouse_pos = get_global_mouse_position()
	
	var clamped_x = clamp(mouse_pos.x, min_pos.x, max_pos.x)
	var clamped_y = clamp(mouse_pos.y, min_pos.y, max_pos.y)
	
	global_position = Vector2(clamped_x, clamped_y) - size / 2
