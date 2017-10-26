//show_debug_message("PluginStopComposite: "+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginStopComposite != -1)
    {
        external_call(global.PluginStopComposite, argument0);
    }
}

