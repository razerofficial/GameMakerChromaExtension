//show_debug_message("ScriptAnimationStop: "+global.ChromaPath);

if (os_type == os_windows)
{
    if (global.PluginStopAnimation == -1)
    {
        //show_debug_message("****** GET PLUGIN METHOD: PluginStopAnimation *****");
        global.PluginStopAnimation = external_define('CChromaEditorLibrary.dll', 'PluginStopAnimationD', dll_cdecl, ty_real, 1, ty_real);
    }
    
    // stop animation
    if (global.ChromaId != -1)
    {
        global.ChromaId = external_call(global.PluginStopAnimation, global.ChromaId);
        show_debug_message('PluginStopAnimation result='+string(global.ChromaId));
    }
   
    return global.ChromaId;
}

return -1;

