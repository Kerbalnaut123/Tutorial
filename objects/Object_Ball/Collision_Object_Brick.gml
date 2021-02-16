/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7351704B
/// @DnDArgument : "code" "var _dir = direction - 100;$(13_10)while (place_meeting(x, y, other))$(13_10)	{$(13_10)		x += lengthdir_x(1, _dir);$(13_10)		y += lengthdir_y(1, _dir);$(13_10)	}$(13_10)move_bounce_all(true);"
var _dir = direction - 100;
while (place_meeting(x, y, other))
	{
		x += lengthdir_x(1, _dir);
		y += lengthdir_y(1, _dir);
	}
move_bounce_all(true);

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 1BFD81B2
/// @DnDArgument : "target" "_spd"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "instvar" "7"
var _spd = speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46971696
/// @DnDArgument : "var" "_spd"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "12"
if(_spd < 12)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 69B42EB5
	/// @DnDParent : 46971696
	/// @DnDArgument : "value" "0.1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "3"
	speed += 0.1;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 56FE4BDF
/// @DnDArgument : "soundid" "Sound_Bounce"
/// @DnDSaveInfo : "soundid" "Sound_Bounce"
audio_play_sound(Sound_Bounce, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 09A4A1A9
/// @DnDApplyTo : other
with(other) instance_destroy();