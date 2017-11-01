// EXPORT_API double PluginPlayCompositeD(const char* name, double loop);
//show_debug_message("PluginPlayComposite: path="+argument0+" loop="+string(argument1));
if (os_type == os_windows)
{
    if (global.PluginPlayComposite != -1)
    {
        external_call(global.PluginPlayComposite, argument0, argument1);
    }
}

