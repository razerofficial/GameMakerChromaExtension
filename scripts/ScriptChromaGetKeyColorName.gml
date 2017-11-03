// EXPORT_API double PluginGetKeyColorD(const char* path, double frameId, double rzkey);
//show_debug_message("PluginGetKeyColor: device="+string(argument0)+" frameId="+argument1+" rzkey="+string(argument2));
if (os_type == os_windows)
{
    if (global.PluginGetKeyColor != -1)
    {
        return external_call(global.PluginGetKeyColor, argument0, argument1, argument2);
    }
}
return 0;

