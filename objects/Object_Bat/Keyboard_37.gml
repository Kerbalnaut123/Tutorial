/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B6C4AAA
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "xoffset + spd"
if(x > xoffset + spd)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 492FAAA9
	/// @DnDParent : 4B6C4AAA
	/// @DnDArgument : "expr" "-spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -spd;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 16262AA9
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58A8D949
	/// @DnDParent : 16262AA9
	/// @DnDArgument : "expr" "xoffset"
	/// @DnDArgument : "var" "x"
	x = xoffset;
}