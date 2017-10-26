show_debug_message("PluginCopyKeyColorName: source="+argument0+" target="+argument1+" frameId="+string(argument2)+" rzkey="+argument3);
if (os_type == os_windows)
{
    if (global.PluginCopyKeyColorName != -1)
    {
        external_call(global.PluginCopyKeyColorName, argument0, argument1, string(argument2), argument3);
    }
}

