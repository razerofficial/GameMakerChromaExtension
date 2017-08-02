show_debug_message("ScriptAnimationEdit: path="+argument0);
if (os_type == os_windows)
{
    if (global.PluginIsDialogOpen == -1)
    {
        global.PluginIsDialogOpen = external_define('CChromaEditorLibrary.dll', 'PluginIsDialogOpenD', dll_cdecl, ty_real, 0);
    }
    if (global.PluginOpenEditorDialog == -1)
    {
        global.PluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialogD', dll_cdecl, ty_real, 1, ty_string);
    }
    if (external_call(global.PluginIsDialogOpen) == 0.0)
    {
        external_call(global.PluginOpenEditorDialog, argument0);
    }
}

