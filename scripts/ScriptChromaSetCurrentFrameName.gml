// EXPORT_API double PluginSetCurrentFrameNameD(const char* path, double frameId);
//show_debug_message("PluginSetCurrentFrameName: device="+string(argument0)+" frameId="+string(argument1));
if (os_type == os_windows)
{
    if (global.PluginSetCurrentFrameName != -1)
    {
        return external_call(global.PluginSetCurrentFrameName, argument0, argument1);
    }
}

