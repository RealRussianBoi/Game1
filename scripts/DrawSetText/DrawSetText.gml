/// @dec DrawSetText(colour,font,halign,valign)
/// @arg colour
/// @arg font
/// @arg halign
/// @arg valign

// Allows one line setup of major text drawing vars.
// Requiring all four prevents silly coders from forgetting one
// And therefore creating a dumb dependency on other event calls.
// (Then wondering why their text changes later in development.)

function DrawSetText(argument0, argument1, argument2, argument3) {
		draw_set_colour(argument0);
		draw_set_font(argument1);
		draw_set_halign(argument2);
		draw_set_valign(argument3);
	}