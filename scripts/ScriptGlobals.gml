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
    global.PluginPlayComposite = external_define('CChromaEditorLibrary.dll', 'PluginPlayCompositeD', dll_cdecl, ty_real, 2, ty_string, ty_real);
    global.PluginStopComposite = external_define('CChromaEditorLibrary.dll', 'PluginStopCompositeD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginPauseAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginPauseAnimationNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginResumeAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginResumeAnimationNameD', dll_cdecl, ty_real, 2, ty_string, ty_real);
    global.PluginGetFrameCountName = external_define('CChromaEditorLibrary.dll', 'PluginGetFrameCountNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginSetKeyColorName = external_define('CChromaEditorLibrary.dll', 'PluginSetKeyColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_string, ty_string, ty_string);
    global.PluginCopyKeyColorName = external_define('CChromaEditorLibrary.dll', 'PluginCopyKeyColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_string, ty_string, ty_string);
    global.PluginCloseAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginCloseAnimationNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginPlayAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationNameD', dll_cdecl, ty_real, 2, ty_string, ty_real);
}

