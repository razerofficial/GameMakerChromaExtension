effectId = 123;
show_debug_message("****** OBJECT CREATED*****");

if (os_type == os_windows)
{
    pluginIsDialogOpen = external_define('CChromaEditorLibrary.dll', 'PluginIsDialogOpen', dll_cdecl, ty_real, 0);
    if (external_call(pluginIsDialogOpen) == 0.0)
    {
        pluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialog', dll_cdecl, ty_real, 1, ty_string);
        external_call(pluginOpenEditorDialog, 'hello world!');
    }
}

