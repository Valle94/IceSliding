for (var j = 1; j <=3; j++)
{
	var start_x = 384*j-192; // Starting X position for buttons
	var start_y = 272; // Starting Y position
	var button_width = 136; // Space between buttons horizontally
	var button_height = 88; // Space between buttons vertically
	var cols = 2; // Number of buttons per row

	// Loop to create buttons
	for (var i = 1; i <= array_length(global.easy_rooms); i++) {
	    var x_pos = start_x + ((i - 1) % cols) * button_width;
	    var y_pos = start_y + floor((i - 1) / cols) * button_height;

	    // Create button instance
	    var button = instance_create_layer(x_pos, y_pos, "Instances", obj_level_select);
	    button.level = i; // Assign level number
		if j == 1
		{
			button.difficulty = "easy"
		}
		else if j == 2
		{
			button.difficulty = "medium"
		}
		else if j == 3
		{
			button.difficulty = "hard"
		}
	}
}