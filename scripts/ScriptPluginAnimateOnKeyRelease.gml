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

