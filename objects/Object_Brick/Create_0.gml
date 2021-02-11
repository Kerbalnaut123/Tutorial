/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 20A0A838
/// @DnDInput : 6
/// @DnDArgument : "var" "_colour"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "c_red"
/// @DnDArgument : "option_1" "c_yellow"
/// @DnDArgument : "option_2" "c_blue"
/// @DnDArgument : "option_3" "c_green"
/// @DnDArgument : "option_4" "c_fuchsia"
/// @DnDArgument : "option_5" "c_orange"
var _colour = choose(c_red, c_yellow, c_blue, c_green, c_fuchsia, c_orange);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5F7810D2
/// @DnDArgument : "colour" "_colour"
/// @DnDArgument : "alpha" "false"
image_blend = _colour & $ffffff;