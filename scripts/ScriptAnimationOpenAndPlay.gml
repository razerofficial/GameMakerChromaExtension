//show_debug_message("ScriptAnimationOpenAndPlay: path="+argument0+" id="+string(argument1));
result = -1;
chromaId = argument1;

if (os_type == os_windows)
{
    // initialize SDK
    if (global.PluginIsInitialized != -1 && global.PluginInit != -1)
    {
        result = external_call(global.PluginIsInitialized);
        show_debug_message('PluginIsInitialized result='+string(result));
        if (result == 0.0)
        {
            // init
            result = external_call(global.PluginInit);
            show_debug_message('PluginInit result='+string(result));
        }
    }
    
    // open animation, chromaId will be -1 before it's opened
    if (global.PluginOpenAnimation != -1 && chromaId == -1)
    {
        chromaId = external_call(global.PluginOpenAnimation, argument0);
        show_debug_message('PluginOpenAnimation result='+string(chromaId));
    }

    // play animation, chromaId will be >= 0 when opened
    if (global.PluginPlayAnimation != -1 && chromaId != -1)
    {
        result = external_call(global.PluginPlayAnimation, chromaId);
        show_debug_message('PluginPlayAnimation result='+string(result));
    }
}

return result;

