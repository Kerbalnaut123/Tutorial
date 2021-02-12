/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 562A07F1
/// @DnDArgument : "dir" "2"
vspeed = -vspeed;

/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 662E21F8
/// @DnDArgument : "target" "_spd"
/// @DnDArgument : "instvar" "7"
_spd = speed;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3BADAEA0
/// @DnDInput : 4
/// @DnDArgument : "var" "_dir"
/// @DnDArgument : "function" "point_direction"
/// @DnDArgument : "arg" "other.x"
/// @DnDArgument : "arg_1" "other.y + 32"
/// @DnDArgument : "arg_2" "x"
/// @DnDArgument : "arg_3" "y"
_dir = point_direction(other.x, other.y + 32, x, y);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 547CF354
/// @DnDInput : 4
/// @DnDArgument : "var" "_dist"
/// @DnDArgument : "function" "point_distance"
/// @DnDArgument : "arg" "other.x"
/// @DnDArgument : "arg_1" "other.y + 32"
/// @DnDArgument : "arg_2" "x"
/// @DnDArgument : "arg_3" "y"
_dist = point_distance(other.x, other.y + 32, x, y);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 73AFBF79
/// @DnDInput : 2
/// @DnDArgument : "function" "motion_add"
/// @DnDArgument : "arg" "_dir"
/// @DnDArgument : "arg_1" "_dist / 5"
motion_add(_dir, _dist / 5);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 34931AB9
/// @DnDArgument : "value" "_spd"
/// @DnDArgument : "instvar" "3"
speed = _spd;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2AA0203A
/// @DnDArgument : "soundid" "Sound_Bounce"
/// @DnDSaveInfo : "soundid" "Sound_Bounce"
audio_play_sound(Sound_Bounce, 0, 0);