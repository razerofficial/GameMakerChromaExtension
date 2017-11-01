// EXPORT_API double PluginResumeAnimationNameD(const char* path, double loop);
//show_debug_message("PluginResumeAnimationName: path="+argument0+" loop="+string(argument1));
if (os_type == os_windows)
{
    if (global.PluginResumeAnimationName != -1)
    {
        external_call(global.PluginResumeAnimationName, argument0, argument1);
    }
}

