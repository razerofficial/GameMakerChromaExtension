// EXPORT_API double PluginSet2DColorNameD(const char* path, double frameId, double rowColumnIndex, double color);
//show_debug_message("PluginSet2DColorName: path="+argument0+" frameId="+string(argument1)+" rowColumnIndex="+string(argument2)+" color="+string(argument3));
if (os_type == os_windows)
{
    if (global.PluginSet2DColorName != -1)
    {
        external_call(global.PluginSet2DColorName, argument0, argument1, argument2, argument3);
    }
}

