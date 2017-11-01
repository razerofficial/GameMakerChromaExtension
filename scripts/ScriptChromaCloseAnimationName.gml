// EXPORT_API double PluginCloseAnimationNameD(const char* path);
//show_debug_message("PluginCloseAnimationName: "+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginCloseAnimationName != -1)
    {
        external_call(global.PluginCloseAnimationName, argument0);
    }
}

