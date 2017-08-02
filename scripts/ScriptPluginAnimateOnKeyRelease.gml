if (os_type == os_windows)
{
    // open and play animations
    if (keyboard_check_released(ord('1')))
    {
        global.ChromaChromaLinkEffect = ScriptAnimationOpenAndPlay('RandomChromaLinkEffect.chroma', global.ChromaChromaLinkEffect);
        global.ChromaHeadsetEffect = ScriptAnimationOpenAndPlay('RandomHeadsetEffect.chroma', global.ChromaHeadsetEffect);
        global.ChromaKeyboardEffect = ScriptAnimationOpenAndPlay('KeyboardParticleAnimation.chroma', global.ChromaKeyboardEffect);
        global.ChromaKeypadEffect = ScriptAnimationOpenAndPlay('RandomKeypadEffect.chroma', global.ChromaKeypadEffect);
        global.ChromaMouseEffect = ScriptAnimationOpenAndPlay('RandomMouseEffect.chroma', global.ChromaMouseEffect);
        global.ChromaMousepadEffect = ScriptAnimationOpenAndPlay('RandomMousepadEffect.chroma', global.ChromaMousepadEffect);
    }
    
    // stop animations
    if (keyboard_check_released(ord('2')))
    {
        ScriptAnimationStop(global.ChromaChromaLinkEffect);       
        ScriptAnimationStop(global.ChromaHeadsetEffect);
        ScriptAnimationStop(global.ChromaKeyboardEffect);
        ScriptAnimationStop(global.ChromaKeypadEffect);
        ScriptAnimationStop(global.ChromaMouseEffect);
        ScriptAnimationStop(global.ChromaMousepadEffect);
    }
}

