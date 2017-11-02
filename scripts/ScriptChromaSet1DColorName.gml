// EXPORT_API double PluginSet1DColorNameD(const char* path, double frameId, double led, double color);
//show_debug_message("PluginSet1DColorName: path="+argument0+" frameId="+string(argument1)+" led="+string(argument2)+" color="+string(argument3));
if (os_type == os_windows)
{
    if (global.PluginSet1DColorName != -1)
    {
        external_call(global.PluginSet1DColorName, argument0, argument1, argument2, argument3);
    }
}

