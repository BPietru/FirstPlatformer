/// @desc Slide(mode, targetroom)
/// @arg Mode sets transtition mode between next, restart and goto.
/// @arg Target sets target room > goto.

with (oTransition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
