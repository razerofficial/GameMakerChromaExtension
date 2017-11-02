// EXPORT_API double PluginGetMaxLedsD(double device);
//show_debug_message("PluginGetMaxLeds: device="+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginGetMaxLeds != -1)
    {
        return external_call(global.PluginGetMaxLeds, argument0);
    }
}
return 0;

