//show_debug_message("ScriptAnimationOpenAndPlay: path="+argument0+" id="+string(argument1));
result = -1;
chromaId = argument1;

if (os_type == os_windows)
{
    if (global.PluginOpenAnimation == -1)
    {
        //show_debug_message("****** GET PLUGIN METHOD: PluginOpenAnimation *****");
        global.PluginOpenAnimation = external_define('CChromaEditorLibrary.dll', 'PluginOpenAnimationD', dll_cdecl, ty_real, 1, ty_string);
    }
    
    if (global.PluginPlayAnimation == -1)
    {
        //show_debug_message("****** GET PLUGIN METHOD: PluginPlayAnimation *****");
        global.PluginPlayAnimation = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationD', dll_cdecl, ty_real, 1, ty_real);
    }
    
    // open animation
    if (chromaId == -1)
    {
        chromaId = external_call(global.PluginOpenAnimation, argument0);
        show_debug_message('PluginOpenAnimation result='+string(chromaId));
    }

    // play animation
    result = external_call(global.PluginPlayAnimation, chromaId);
    show_debug_message('PluginPlayAnimation result='+string(result));
}

return result;

