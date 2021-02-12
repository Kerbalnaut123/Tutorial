/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 61271AA4
/// @DnDArgument : "var" "_bat_x"
/// @DnDArgument : "value" "x"
var _bat_x = x;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4A95B8F6
/// @DnDApplyTo : {Object_Ball}
with(Object_Ball) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60039D5D
	/// @DnDParent : 4A95B8F6
	/// @DnDArgument : "var" "go"
	/// @DnDArgument : "value" "false"
	if(go == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28A0A15C
		/// @DnDParent : 60039D5D
		/// @DnDArgument : "expr" "_bat_x"
		/// @DnDArgument : "var" "x"
		x = _bat_x;
	}
}