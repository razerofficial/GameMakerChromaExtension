RZKEY_W = 1003;

if (os_type == os_windows)
{
    // play composite
    if (keyboard_check_released(ord('1')))
    {
        ScriptPlayComposite('Random', 0.0);
    }
    
    // loop composite
    if (keyboard_check_released(ord('2')))
    {
        ScriptPlayComposite('Random', 1.0);
    }
    
    // stop composite
    if (keyboard_check_released(ord('3')))
    {
        ScriptStopComposite('Random');
    }
    
    // pause animations
    if (keyboard_check_released(ord('4')))
    {
        ScriptPauseAnimationName('Random_ChromaLink.chroma');
        ScriptPauseAnimationName('Random_Headset.chroma');
        ScriptPauseAnimationName('Random_Keyboard.chroma');
        ScriptPauseAnimationName('Random_Keypad.chroma');
        ScriptPauseAnimationName('Random_Mouse.chroma');
        ScriptPauseAnimationName('Random_Mousepad.chroma');
    }
    
    // resume animations
    if (keyboard_check_released(ord('5')))
    {
        ScriptResumeAnimationName('Random_ChromaLink.chroma', 0.0);
        ScriptResumeAnimationName('Random_Headset.chroma', 0.0);
        ScriptResumeAnimationName('Random_Keyboard.chroma', 0.0);
        ScriptResumeAnimationName('Random_Keypad.chroma', 0.0);
        ScriptResumeAnimationName('Random_Mouse.chroma', 0.0);
        ScriptResumeAnimationName('Random_Mousepad.chroma', 0.0);
    }
    
    // resume loop animations
    if (keyboard_check_released(ord('6')))
    {
        ScriptResumeAnimationName('Random_ChromaLink.chroma', 1.0);
        ScriptResumeAnimationName('Random_Headset.chroma', 1.0);
        ScriptResumeAnimationName('Random_Keyboard.chroma', 1.0);
        ScriptResumeAnimationName('Random_Keypad.chroma', 1.0);
        ScriptResumeAnimationName('Random_Mouse.chroma', 1.0);
        ScriptResumeAnimationName('Random_Mousepad.chroma', 1.0);
    }
    
    // show hotkeys
    if (keyboard_check_released(ord('7')))
    {
        ScriptCloseAnimationName('Random_Keyboard.chroma');
        frameCount = ScriptGetFrameCountName('Random_Keyboard.chroma');
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            ScriptCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_W);
        }
        ScriptPlayAnimationName('Random_Keyboard.chroma', 1.0);
    }
    
    // hide hotkeys
    if (keyboard_check_released(ord('8')))
    {
        ScriptCloseAnimationName('Random_Keyboard.chroma');
        ScriptPlayAnimationName('Random_Keyboard.chroma', 1.0);
    }
    
    // edit animation
    if (keyboard_check_released(ord('E')))
    {
        ScriptOpenEditorDialog('KeyboardParticleAnimation.chroma');
    }
    
    // exit
    if (keyboard_check_released(vk_escape))
    {
        ScriptUninit();
        game_end();
    }
}

