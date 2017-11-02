if (os_type == os_windows)
{
    // init globals
    global.PluginCloseAnimation = external_define('CChromaEditorLibrary.dll', 'PluginCloseAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginCloseAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginCloseAnimationNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginCloseComposite = external_define('CChromaEditorLibrary.dll', 'PluginCloseCompositeD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginCopyKeyColorName = external_define('CChromaEditorLibrary.dll', 'PluginCopyKeyColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_string, ty_real, ty_real);
    global.PluginGet1DColorName = external_define('CChromaEditorLibrary.dll', 'PluginGet1DColorNameD', dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
    global.PluginGet2DColorName = external_define('CChromaEditorLibrary.dll', 'PluginGet2DColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
    global.PluginGetDeviceName = external_define('CChromaEditorLibrary.dll', 'PluginGetDeviceNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginGetDeviceTypeName = external_define('CChromaEditorLibrary.dll', 'PluginGetDeviceTypeNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginGetMaxColumn = external_define('CChromaEditorLibrary.dll', 'PluginGetMaxColumnD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginGetFrameCountName = external_define('CChromaEditorLibrary.dll', 'PluginGetFrameCountNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginGetMaxLeds = external_define('CChromaEditorLibrary.dll', 'PluginGetMaxLedsD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginGetMaxRow = external_define('CChromaEditorLibrary.dll', 'PluginGetMaxRowD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginInit = external_define('CChromaEditorLibrary.dll', 'PluginInitD', dll_cdecl, ty_real, 0);
    global.PluginIsDialogOpen = external_define('CChromaEditorLibrary.dll', 'PluginIsDialogOpenD', dll_cdecl, ty_real, 0);
    global.PluginIsInitialized = external_define('CChromaEditorLibrary.dll', 'PluginIsInitializedD', dll_cdecl, ty_real, 0);
    global.PluginLoadAnimation = external_define('CChromaEditorLibrary.dll', 'PluginLoadAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginOpenAnimation = external_define('CChromaEditorLibrary.dll', 'PluginOpenAnimationD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialogD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginPauseAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginPauseAnimationNameD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginPlayAnimation = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginPlayAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationNameD', dll_cdecl, ty_real, 2, ty_string, ty_real);
    global.PluginPlayComposite = external_define('CChromaEditorLibrary.dll', 'PluginPlayCompositeD', dll_cdecl, ty_real, 2, ty_string, ty_real);
    global.PluginResumeAnimationName = external_define('CChromaEditorLibrary.dll', 'PluginResumeAnimationNameD', dll_cdecl, ty_real, 2, ty_string, ty_real);
    global.PluginSet1DColorName = external_define('CChromaEditorLibrary.dll', 'PluginSet1DColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
    global.PluginSet2DColorName = external_define('CChromaEditorLibrary.dll', 'PluginSet2DColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
    global.PluginSetKeyColorName = external_define('CChromaEditorLibrary.dll', 'PluginSetKeyColorNameD', dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
    global.PluginStopAnimation = external_define('CChromaEditorLibrary.dll', 'PluginStopAnimationD', dll_cdecl, ty_real, 1, ty_real);
    global.PluginStopComposite = external_define('CChromaEditorLibrary.dll', 'PluginStopCompositeD', dll_cdecl, ty_real, 1, ty_string);
    global.PluginUninit = external_define('CChromaEditorLibrary.dll', 'PluginUninitD', dll_cdecl, ty_real, 0);
}

