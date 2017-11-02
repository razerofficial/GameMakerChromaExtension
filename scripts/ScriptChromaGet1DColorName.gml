// EXPORT_API double PluginGet1DColorNameD(const char* path, double frameId, double led);
//show_debug_message("PluginGet1DColorName: path="+argument0+" frameId="+string(argument1)+" led="+string(argument2));
if (os_type == os_windows)
{
    if (global.PluginSet1DColorName != -1)
    {
        return external_call(global.PluginSet1DColorName, argument0, argument1, argument2);
    }
}
return 0;

