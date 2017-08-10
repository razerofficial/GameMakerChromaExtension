if (os_type == os_windows)
{
    // init globals
    global.PluginIsInitialized = external_define('CChromaEditorLibrary.dll', 'PluginIsInitializedD', dll_cdecl, ty_real, 0);
    global.PluginInit = external_define('CChromaEditorLibrary.dll', 'PluginInitD', dll_cdecl, ty_real, 0);
    global.PluginUninit = external_define('CChromaEditorLibrary.dll', 'PluginUninitD', dll_cdecl, ty_real, 0);
    global.PluginIsDialogOpen = external_define('CChromaEditorLibrary.dll', 'PluginIsDialogOpenD', dll_cdecl, ty_real, 0);
    global.PluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialogD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginOpenAnimation = external_define('CChromaEditorLibrary.dll', 'PluginOpenAnimationD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginPlayAnimation = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginLoadAnimation = external_define('CChromaEditorLibrary.dll', 'PluginLoadAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginStopAnimation = external_define('CChromaEditorLibrary.dll', 'PluginStopAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginCloseAnimation = external_define('CChromaEditorLibrary.dll', 'PluginCloseAnimationD', dll_cdecl, ty_real, 1, ty_real);
    // animations one per type
    global.ChromaChromaLinkEffect = -1;
    global.ChromaHeadsetEffect = -1;
    global.ChromaKeyboardEffect = -1;
    global.ChromaKeypadEffect = -1;
    global.ChromaMouseEffect = -1;
    global.ChromaMousepadEffect = -1;
}

