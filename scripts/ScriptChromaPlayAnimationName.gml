// EXPORT_API double PluginPlayAnimationNameD(const char* path, double loop);
//show_debug_message("PluginPlayAnimationName: path="+argument0+" loop="+string(argument1));
if (os_type == os_windows)
{
    if (global.PluginPlayAnimationName != -1)
    {
        external_call(global.PluginPlayAnimationName, argument0, argument1);
    }
}

