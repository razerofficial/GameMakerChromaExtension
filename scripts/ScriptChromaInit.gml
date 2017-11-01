// EXPORT_API double PluginInitD();
//show_debug_message("PluginInit:");
if (os_type == os_windows)
{
    if (global.PluginInit != -1)
    {
        result = external_call(global.PluginInit);
        //show_debug_message('PluginInit result='+string(result));
    }
}

