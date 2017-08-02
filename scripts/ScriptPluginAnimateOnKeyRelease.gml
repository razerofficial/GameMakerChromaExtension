if (os_type == os_windows)
{
    // open and play animations
    if (keyboard_check_released(ord('1')))
    {
        global.ChromaPath = 'RandomChromaLinkEffect.chroma';
        global.ChromaId = global.ChromaChromaLinkEffect;
        global.ChromaChromaLinkEffect = ScriptAnimationOpenAndPlay();
        
        global.ChromaPath = 'RandomHeadsetEffect.chroma';
        global.ChromaId = global.ChromaHeadsetEffect;
        global.ChromaHeadsetEffect = ScriptAnimationOpenAndPlay();
        
        global.ChromaPath = 'KeyboardParticleAnimation.chroma';
        global.ChromaId = global.ChromaKeyboardEffect;
        global.ChromaKeyboardEffect = ScriptAnimationOpenAndPlay();
        
        global.ChromaPath = 'RandomKeypadEffect.chroma';
        global.ChromaId = global.ChromaKeypadEffect;
        global.ChromaKeypadEffect = ScriptAnimationOpenAndPlay();
        
        global.ChromaPath = 'RandomMouseEffect.chroma';
        global.ChromaId = global.ChromaMouseEffect;
        global.ChromaMouseEffect = ScriptAnimationOpenAndPlay();
        
        global.ChromaPath = 'RandomMousepadEffect.chroma';
        global.ChromaId = global.ChromaMousepadEffect;
        global.ChromaMousepadEffect = ScriptAnimationOpenAndPlay();
    }
    
    // stop animations
    if (keyboard_check_released(ord('2')))
    {
        global.ChromaId = global.ChromaChromaLinkEffect;
        ScriptAnimationStop();
        
        global.ChromaId = global.ChromaHeadsetEffect;
        ScriptAnimationStop();
        
        global.ChromaId = global.ChromaKeyboardEffect;
        ScriptAnimationStop();
        
        global.ChromaId = global.ChromaKeypadEffect;
        ScriptAnimationStop();
        
        global.ChromaId = global.ChromaMouseEffect;
        ScriptAnimationStop();
        
        global.ChromaId = global.ChromaMousepadEffect;
        ScriptAnimationStop();
    }
}

