// EXPORT_API double PluginGet2DColorNameD(const char* path, double frameId, double row, double column);
//show_debug_message("PluginGet2DColorName: path="+argument0+" frameId="+string(argument1)+" row="+string(argument2)+" column="+string(argument3));
if (os_type == os_windows)
{
    if (global.PluginGet2DColorName != -1)
    {
        return external_call(global.PluginGet2DColorName, argument0, argument1, argument2, argument3);
    }
}
return 0;

