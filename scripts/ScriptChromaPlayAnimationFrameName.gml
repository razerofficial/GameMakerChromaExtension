// EXPORT_API double PluginPlayAnimationFrameNameD(const char* path, double frameId, double loop);
//show_debug_message("PluginPlayAnimationFrameName: device="+string(argument0)+" frameId="+string(argument1)+" loop="+string(argument2));
if (os_type == os_windows)
{
    if (global.PluginPlayAnimationFrameName != -1)
    {
        return external_call(global.PluginPlayAnimationFrameName, argument0, argument1, argument2);
    }
}
return 0;

