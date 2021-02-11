/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A0C18FC
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_width - xoffset - spd"
if(x < room_width - xoffset - spd)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BBA32E0
	/// @DnDParent : 2A0C18FC
	/// @DnDArgument : "expr" "spd"
	/// @DnDArgument : "var" "x"
	x = spd;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5E77C9E5
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01B80D1A
	/// @DnDParent : 5E77C9E5
	/// @DnDArgument : "expr" "room_width - xoffset"
	/// @DnDArgument : "var" "x"
	x = room_width - xoffset;
}