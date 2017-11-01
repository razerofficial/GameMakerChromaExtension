// EXPORT_API double PluginUninitD();
if (os_type == os_windows)
{
    if (global.PluginUninit != -1)
    {
        result = external_call(global.PluginUninit);
        //show_debug_message('PluginUninit result='+string(result));
    }
}

