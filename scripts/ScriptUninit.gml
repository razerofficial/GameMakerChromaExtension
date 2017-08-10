if (os_type == os_windows)
{
    if (global.PluginUninit != -1 && global.PluginIsInitialized != -1)
    {
        if (external_call(global.PluginIsInitialized) == 1.0)
        {
            // uninit
            result = external_call(global.PluginUninit);
            show_debug_message('PluginUninit result='+string(result));
        }
    }
}

