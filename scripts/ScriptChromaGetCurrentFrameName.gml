// EXPORT_API double PluginGetCurrentFrameNameD(const char* path);
//show_debug_message("PluginGetCurrentFrameName: device="+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginGetCurrentFrameName != -1)
    {
        return external_call(global.PluginGetCurrentFrameName, argument0);
    }
}
return 0;

