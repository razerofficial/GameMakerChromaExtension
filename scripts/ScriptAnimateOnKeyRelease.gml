RZKEY_W = "515";
RZKEY_A = "770";
RZKEY_I = "521";
RZKEY_J = "776";
RZKEY_K = "777";
RZKEY_L = "778";
RZKEY_S = "771";
RZKEY_D = "772";
RZKEY_ENTER = "782";
red = "255";

if (os_type == os_windows)
{
    // play composite
    if (keyboard_check_released(ord('1')))
    {
        ScriptChromaPlayComposite('Random', 0.0);
    }
    
    // loop composite
    if (keyboard_check_released(ord('2')))
    {
        ScriptChromaPlayComposite('Random', 1.0);
    }
    
    // stop composite
    if (keyboard_check_released(ord('3')))
    {
        ScriptChromaStopComposite('Random');
    }
    
    // pause animations
    if (keyboard_check_released(ord('4')))
    {
        ScriptChromaPauseAnimationName('Random_ChromaLink.chroma');
        ScriptChromaPauseAnimationName('Random_Headset.chroma');
        ScriptChromaPauseAnimationName('Random_Keyboard.chroma');
        ScriptChromaPauseAnimationName('Random_Keypad.chroma');
        ScriptChromaPauseAnimationName('Random_Mouse.chroma');
        ScriptChromaPauseAnimationName('Random_Mousepad.chroma');
    }
    
    // resume animations
    if (keyboard_check_released(ord('5')))
    {
        ScriptChromaResumeAnimationName('Random_ChromaLink.chroma', 0.0);
        ScriptChromaResumeAnimationName('Random_Headset.chroma', 0.0);
        ScriptChromaResumeAnimationName('Random_Keyboard.chroma', 0.0);
        ScriptChromaResumeAnimationName('Random_Keypad.chroma', 0.0);
        ScriptChromaResumeAnimationName('Random_Mouse.chroma', 0.0);
        ScriptChromaResumeAnimationName('Random_Mousepad.chroma', 0.0);
    }
    
    // resume loop animations
    if (keyboard_check_released(ord('6')))
    {
        ScriptChromaResumeAnimationName('Random_ChromaLink.chroma', 1.0);
        ScriptChromaResumeAnimationName('Random_Headset.chroma', 1.0);
        ScriptChromaResumeAnimationName('Random_Keyboard.chroma', 1.0);
        ScriptChromaResumeAnimationName('Random_Keypad.chroma', 1.0);
        ScriptChromaResumeAnimationName('Random_Mouse.chroma', 1.0);
        ScriptChromaResumeAnimationName('Random_Mousepad.chroma', 1.0);
    }
    
    // show hotkeys
    if (keyboard_check_released(ord('7')))
    {
        ScriptChromaCloseAnimationName('Random_Keyboard.chroma');
        frameCount = ScriptChromaGetFrameCountName('Random_Keyboard.chroma');
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_W);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_A);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_S);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_D);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', 'Random_Keyboard.chroma', frameIndex, RZKEY_ENTER);
            ScriptChromaSetKeyColorName('Random_Keyboard.chroma', frameIndex, RZKEY_I, red);
            ScriptChromaSetKeyColorName('Random_Keyboard.chroma', frameIndex, RZKEY_J, red);
            ScriptChromaSetKeyColorName('Random_Keyboard.chroma', frameIndex, RZKEY_K, red);
            ScriptChromaSetKeyColorName('Random_Keyboard.chroma', frameIndex, RZKEY_L, red);
        }
        ScriptChromaPlayAnimationName('Random_Keyboard.chroma', 1.0);
    }
    
    // hide hotkeys
    if (keyboard_check_released(ord('8')))
    {
        ScriptChromaCloseAnimationName('Random_Keyboard.chroma');
        ScriptChromaPlayAnimationName('Random_Keyboard.chroma', 1.0);
    }
    
    // edit animation
    if (keyboard_check_released(ord('E')))
    {
        ScriptChromaOpenEditorDialog('KeyboardParticleAnimation.chroma');
    }
    
    // exit
    if (keyboard_check_released(vk_escape))
    {
        ScriptChromaUninit();
        game_end();
    }
}

