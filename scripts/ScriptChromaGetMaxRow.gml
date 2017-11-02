// EXPORT_API double PluginGetMaxRowD(double device);
//show_debug_message("PluginGetMaxRow: device="+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginGetMaxRow != -1)
    {
        return external_call(global.PluginGetMaxRow, argument0);
    }
}
return 0;

