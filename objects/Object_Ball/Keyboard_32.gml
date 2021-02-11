/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 084CD1E6
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11D4886A
	/// @DnDParent : 084CD1E6
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 1B527FD2
	/// @DnDParent : 084CD1E6
	/// @DnDArgument : "direction" "dir"
	direction = dir;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7773B08C
	/// @DnDParent : 084CD1E6
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 494E0A78
	/// @DnDParent : 084CD1E6
	/// @DnDArgument : "soundid" "Sound_Click"
	/// @DnDSaveInfo : "soundid" "Sound_Click"
	audio_play_sound(Sound_Click, 0, 0);
}