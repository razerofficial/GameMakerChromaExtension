effectId = 123;
show_debug_message("****** OBJECT CREATED*****");

if (os_type == os_windows)
{
    pluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialog', dll_cdecl, ty_real, 1, ty_string);
    external_call(pluginOpenEditorDialog, 'hello world!');
}

