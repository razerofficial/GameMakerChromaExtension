// EXPORT_API double PluginCloseCompositeD(const char* name);
//show_debug_message("PluginCloseComposite: "+string(argument0));
if (os_type == os_windows)
{
    if (global.PluginCloseComposite != -1)
    {
        external_call(global.PluginCloseComposite, argument0);
    }
}

