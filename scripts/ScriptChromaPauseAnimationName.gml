// EXPORT_API double PluginPauseAnimationNameD(const char* path);
//show_debug_message("PluginPauseAnimationName: "+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginPauseAnimationName != -1)
    {
        external_call(global.PluginPauseAnimationName, argument0);
    }
}

