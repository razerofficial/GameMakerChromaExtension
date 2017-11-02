// EXPORT_API double PluginSet2DColorNameD(const char* path, double frameId, double row, double column, double color);
//show_debug_message("PluginSet2DColorName: path="+argument0+" frameId="+string(argument1)+" row="+string(argument2)+" column="+string(argument3)+" color="+string(argument4));
if (os_type == os_windows)
{
    if (global.PluginSet2DColorName != -1)
    {
        external_call(global.PluginSet2DColorName, argument0, argument1, argument2, argument3, argument4);
    }
}

