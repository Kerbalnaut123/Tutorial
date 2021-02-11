/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 4682CE6B
/// @DnDInput : 8
/// @DnDArgument : "target" "_left"
/// @DnDArgument : "target_1" "_top"
/// @DnDArgument : "target_2" "_right"
/// @DnDArgument : "target_3" "_bottom"
/// @DnDArgument : "target_4" "_xoff"
/// @DnDArgument : "target_5" "_yoff"
/// @DnDArgument : "target_6" "_hspd"
/// @DnDArgument : "target_7" "_vspd"
/// @DnDArgument : "instvar" "30"
/// @DnDArgument : "instvar_1" "31"
/// @DnDArgument : "instvar_2" "32"
/// @DnDArgument : "instvar_3" "33"
/// @DnDArgument : "instvar_4" "28"
/// @DnDArgument : "instvar_5" "29"
/// @DnDArgument : "instvar_6" "8"
/// @DnDArgument : "instvar_7" "9"
_left = bbox_left;
_top = bbox_top;
_right = bbox_right;
_bottom = bbox_bottom;
_xoff = sprite_xoffset;
_yoff = sprite_yoffset;
_hspd = hspeed;
_vspd = vspeed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EB619A0
/// @DnDArgument : "var" "_left"
/// @DnDArgument : "op" "3"
if(_left <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6E9DDF7B
	/// @DnDInput : 2
	/// @DnDParent : 6EB619A0
	/// @DnDArgument : "value" "_hspd * -1"
	/// @DnDArgument : "value_1" "_xoff"
	/// @DnDArgument : "instvar" "4"
	hspeed = _hspd * -1;
	x = _xoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18220809
/// @DnDArgument : "var" "_right"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_width"
if(_right >= room_width)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 516B7C3A
	/// @DnDInput : 2
	/// @DnDParent : 18220809
	/// @DnDArgument : "value" "_hspd * -1"
	/// @DnDArgument : "value_1" "room_width - _xoff"
	/// @DnDArgument : "instvar" "4"
	hspeed = _hspd * -1;
	x = room_width - _xoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00D24481
/// @DnDArgument : "var" "_top"
/// @DnDArgument : "op" "3"
if(_top <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 615459CE
	/// @DnDInput : 2
	/// @DnDParent : 00D24481
	/// @DnDArgument : "value" "_vspd * -1"
	/// @DnDArgument : "value_1" "_yoff"
	/// @DnDArgument : "instvar" "5"
	/// @DnDArgument : "instvar_1" "1"
	vspeed = _vspd * -1;
	y = _yoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EEE1208
/// @DnDArgument : "var" "_bottom"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_height"
if(_bottom >= room_height)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DD3F0FC
	/// @DnDParent : 3EEE1208
	/// @DnDArgument : "xpos" "xstart"
	/// @DnDArgument : "ypos" "ystart"
	/// @DnDArgument : "objectid" "Object_Ball"
	/// @DnDSaveInfo : "objectid" "Object_Ball"
	instance_create_layer(xstart, ystart, "Instances", Object_Ball);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D7213EE
	/// @DnDParent : 3EEE1208
	instance_destroy();
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6668C85B
/// @DnDArgument : "soundid" "Sound_Bounce"
/// @DnDSaveInfo : "soundid" "Sound_Bounce"
audio_play_sound(Sound_Bounce, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 1B89F138
/// @DnDArgument : "value" "2 - random(4)"
/// @DnDArgument : "instvar" "2"
direction = 2 - random(4);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62EFD18E
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "12"
if(speed <= 12)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 06C500D9
	/// @DnDParent : 62EFD18E
	/// @DnDArgument : "value" "0.1"
	/// @DnDArgument : "instvar" "3"
	speed = 0.1;
}