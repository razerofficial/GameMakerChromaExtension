//show_debug_message("ScriptToBGRInt: Red="+string(argument0)+" Green="+string(argument1) + " Blue="+string(argument2));
result = argument0 & $FF;
result += (argument1 << 8) & $FF00;
result += (argument2 << 16) & $FF0000;
//show_debug_message("ScriptToBGRInt: result="+string(result));
return result;

