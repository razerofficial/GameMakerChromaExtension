// EXPORT_API double PluginGetDeviceNameD(const char* path);
//show_debug_message("PluginGetDeviceName: path="+argument0);
if (os_type == os_windows)
{
    if (global.PluginGetDeviceName != -1)
    {
        return external_call(global.PluginGetDeviceName, argument0);
    }
}
return -1;

