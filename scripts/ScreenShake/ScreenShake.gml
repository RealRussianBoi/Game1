/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shalke in frames (60 = 1 sec at 60 fps)

function ScreenShake(_magnitude,_frames)
{
	with(oCamera)
	{
			if (_magnitude > shake_remain)
			{
				shake_magnitude = _magnitude;
				shake_remain = _magnitude;
				shake_length = _frames;
			}
	}
}