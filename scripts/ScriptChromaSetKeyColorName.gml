// EXPORT_API double PluginSetKeyColorNameD(const char* path, double frameId, double rzkey, double color);
//show_debug_message("PluginSetKeyColorName: source="+argument0+" target="+string(argument1)+" frameId="+string(argument2)+" rzkey="+string(argument3));
if (os_type == os_windows)
{
    if (global.PluginSetKeyColorName != -1)
    {
        external_call(global.PluginSetKeyColorName, argument0, argument1, argument2, argument3);
    }
}

