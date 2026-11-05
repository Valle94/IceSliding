if difficulty == "easy"
{
	if (level > 0 && level <= array_length(global.easy_rooms)) 
	{
	    room_goto(global.easy_rooms[level - 1]);
	} 
	else 
	{
	    show_debug_message("Invalid level: " + string(level));
	}
}
else if difficulty == "medium"
{
	if (level > 0 && level <= array_length(global.medium_rooms)) 
	{
	    room_goto(global.medium_rooms[level - 1]);
	} 
	else 
	{
	    show_debug_message("Invalid level: " + string(level));
	}
}
else if difficulty == "hard"
{
	if (level > 0 && level <= array_length(global.hard_rooms)) 
	{
	    room_goto(global.hard_rooms[level - 1]);
	} 
	else 
	{
	    show_debug_message("Invalid level: " + string(level));
	}
}