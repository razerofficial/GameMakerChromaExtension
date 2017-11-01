// EXPORT_API double PluginCopyKeyColorNameD(const char* sourceAnimation, const char* targetAnimation, double frameId, double rzkey);
//show_debug_message("PluginCopyKeyColorName: source="+argument0+" target="+argument1+" frameId="+string(argument2)+" rzkey="+string(argument3));
if (os_type == os_windows)
{
    if (global.PluginCopyKeyColorName != -1)
    {
        external_call(global.PluginCopyKeyColorName, argument0, argument1, argument2, argument3);
    }
}

