extends Sprite

func _ready():
	_generate_pixel_art_background()

func _generate_pixel_art_background():
	var width = 1024 
	var height = 1024

	var new_texture = Image.new()
	new_texture.create(width, height, false, Image.FORMAT_RGB8)

	new_texture.lock()

	for y in range(height):
		var gradient_color = Color(0.05, 0.1, 0.2).linear_interpolate(Color(0.1, 0.05, 0.3), float(y) / height)
		for x in range(width):
			new_texture.set_pixel(x, y, gradient_color)

	var num_stars = 200 
	var star_size = 3   
	for i in range(num_stars):
		var star_x = randi() % width
		var star_y = randi() % height
		var star_color = Color(randf() * 0.5 + 0.5, randf() * 0.5 + 0.5, randf(), 1.0)
		_draw_star(new_texture, star_x, star_y, star_size, star_color)

	new_texture.unlock()

	var new_bg_texture = ImageTexture.new()
	new_bg_texture.create_from_image(new_texture)
	self.texture = new_bg_texture

func _draw_star(image, center_x, center_y, size, color):
	for y in range(-size, size + 1):
		for x in range(-size, size + 1):
			if x * x + y * y <= size * size:
				var px = center_x + x
				var py = center_y + y
				if px >= 0 and px < image.get_width() and py >= 0 and py < image.get_height():
					image.set_pixel(px, py, color)
