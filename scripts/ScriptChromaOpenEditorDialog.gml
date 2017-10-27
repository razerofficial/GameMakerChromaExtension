show_debug_message("PluginOpenEditorDialog: path="+argument0);
if (os_type == os_windows)
{
    if (global.PluginIsDialogOpen != -1 && global.PluginOpenEditorDialog != -1)
    {
        if (external_call(global.PluginIsDialogOpen) == 0.0)
        {
            external_call(global.PluginOpenEditorDialog, argument0);
        }
    }
}

