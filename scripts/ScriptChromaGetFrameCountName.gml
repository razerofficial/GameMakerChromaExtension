// EXPORT_API double PluginGetFrameCountNameD(const char* path);
//show_debug_message("PluginGetFrameCountName: "+string(argument0));
result = -1;
if (os_type == os_windows)
{
    if (global.PluginGetFrameCountName != -1)
    {
        result = external_call(global.PluginGetFrameCountName, argument0);
        //show_debug_message('PluginGetFrameCountName result='+string(result));
    }
}
return result;

