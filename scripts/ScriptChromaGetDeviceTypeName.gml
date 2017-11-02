// EXPORT_API double PluginGetDeviceTypeNameD(const char* path);
//show_debug_message("PluginGetDeviceTypeName: path="+argument0);
if (os_type == os_windows)
{
    if (global.PluginGetDeviceTypeName != -1)
    {
        return external_call(global.PluginGetDeviceTypeName, argument0);
    }
}
return -1;

