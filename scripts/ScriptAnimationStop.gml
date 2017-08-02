//show_debug_message("ScriptAnimationStop: "+string(argument0));
result = -1;

if (os_type == os_windows)
{
    if (global.PluginStopAnimation == -1)
    {
        //show_debug_message("****** GET PLUGIN METHOD: PluginStopAnimation *****");
        global.PluginStopAnimation = external_define('CChromaEditorLibrary.dll', 'PluginStopAnimationD', dll_cdecl, ty_real, 1, ty_real);
    }
    
    // stop animation
    if (argument0 != -1)
    {
        result = external_call(global.PluginStopAnimation, argument0);
        show_debug_message('PluginStopAnimation result='+string(result));
    }
}

return result;

