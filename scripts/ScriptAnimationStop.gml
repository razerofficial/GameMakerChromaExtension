//show_debug_message("ScriptAnimationStop: "+string(argument0));
result = -1;

if (os_type == os_windows)
{
    if (global.PluginStopAnimation != -1 && argument0 != -1)
    {
        // stop animation
        result = external_call(global.PluginStopAnimation, argument0);
        show_debug_message('PluginStopAnimation result='+string(result));
    }
}

return result;

