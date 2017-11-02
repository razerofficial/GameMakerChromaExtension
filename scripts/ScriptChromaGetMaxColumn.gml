// EXPORT_API double PluginGetMaxColumnD(double device);
//show_debug_message("PluginGetMaxColumn: device="+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginGetMaxColumn != -1)
    {
        return external_call(global.PluginGetMaxColumn, argument0);
    }
}
return 0;

