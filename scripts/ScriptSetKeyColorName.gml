show_debug_message("PluginSetKeyColorName: source="+argument0+" target="+string(argument1)+" frameId="+argument2+" rzkey="+argument3);
if (os_type == os_windows)
{
    if (global.PluginSetKeyColorName != -1)
    {
        external_call(global.PluginSetKeyColorName, argument0, string(argument1), argument2, argument3);
    }
}

