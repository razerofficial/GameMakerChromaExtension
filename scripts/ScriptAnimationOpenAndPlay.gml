show_debug_message("ScriptAnimationOpenAndPlay: "+global.ChromaPath);

if (os_type == os_windows)
{
    if (global.PluginOpenAnimation == -1)
    {
        show_debug_message("****** GET PLUGIN METHOD: PluginOpenAnimation *****");
        global.PluginOpenAnimation = external_define('CChromaEditorLibrary.dll', 'PluginOpenAnimationD', dll_cdecl, ty_real, 1, ty_string);
    }
    
    if (global.PluginPlayAnimation == -1)
    {
        show_debug_message("****** GET PLUGIN METHOD: PluginPlayAnimation *****");
        global.PluginPlayAnimation = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationD', dll_cdecl, ty_real, 1, ty_real);
    }
    
    // open effects
    if (global.ChromaId == -1)
    {
        global.ChromaId = external_call(global.PluginOpenAnimation, global.ChromaPath);
        show_debug_message('PluginOpenAnimation result='+string(global.ChromaId));
    }

    // play effects
    show_debug_message('PluginPlayAnimation result='+string(external_call(global.PluginPlayAnimation, global.ChromaId)));
    
    return global.ChromaId;
}

return -1;

