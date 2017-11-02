RANDOM_CHROMA_LINK = 'Random_ChromaLink.chroma';
RANDOM_HEADSET = 'Random_Headset.chroma';
RANDOM_KEYBOARD = 'Random_Keyboard.chroma';
RANDOM_KEYPAD = 'Random_Keypad.chroma';
RANDOM_MOUSE = 'Random_Mouse.chroma';
RANDOM_MOUSEPAD = 'Random_Mousepad.chroma';

if (os_type == os_windows)
{
    // play composite
    if (keyboard_check_released(ord('1')))
    {
        ScriptChromaCloseComposite('Random'); //reload the animation, other input modifies the set
        ScriptChromaPlayComposite('Random', 0.0);
    }
    
    // loop composite
    if (keyboard_check_released(ord('2')))
    {
        ScriptChromaCloseComposite('Random'); //reload the animation, other input modifies the set
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
        ScriptChromaPauseAnimationName(RANDOM_CHROMA_LINK);
        ScriptChromaPauseAnimationName(RANDOM_HEADSET);
        ScriptChromaPauseAnimationName(RANDOM_KEYBOARD);
        ScriptChromaPauseAnimationName(RANDOM_KEYPAD);
        ScriptChromaPauseAnimationName(RANDOM_MOUSE);
        ScriptChromaPauseAnimationName(RANDOM_MOUSEPAD);
    }
    
    // resume animations
    if (keyboard_check_released(ord('5')))
    {
        ScriptChromaResumeAnimationName(RANDOM_CHROMA_LINK, 0.0);
        ScriptChromaResumeAnimationName(RANDOM_HEADSET, 0.0);
        ScriptChromaResumeAnimationName(RANDOM_KEYBOARD, 0.0);
        ScriptChromaResumeAnimationName(RANDOM_KEYPAD, 0.0);
        ScriptChromaResumeAnimationName(RANDOM_MOUSE, 0.0);
        ScriptChromaResumeAnimationName(RANDOM_MOUSEPAD, 0.0);
    }
    
    // resume loop animations
    if (keyboard_check_released(ord('6')))
    {
        ScriptChromaResumeAnimationName(RANDOM_CHROMA_LINK, 1.0);
        ScriptChromaResumeAnimationName(RANDOM_HEADSET, 1.0);
        ScriptChromaResumeAnimationName(RANDOM_KEYBOARD, 1.0);
        ScriptChromaResumeAnimationName(RANDOM_KEYPAD, 1.0);
        ScriptChromaResumeAnimationName(RANDOM_MOUSE, 1.0);
        ScriptChromaResumeAnimationName(RANDOM_MOUSEPAD, 1.0);
    }
    
    // show hotkeys: red
    if (keyboard_check_released(ord('7')))
    {
        ScriptChromaCloseAnimationName(RANDOM_KEYBOARD);
        frameCount = ScriptChromaGetFrameCountName(RANDOM_KEYBOARD);
        red = ScriptToBGRInt(255, 0, 0);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', RANDOM_KEYBOARD, frameIndex, global.RZKEY_W);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', RANDOM_KEYBOARD, frameIndex, global.RZKEY_A);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', RANDOM_KEYBOARD, frameIndex, global.RZKEY_S);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', RANDOM_KEYBOARD, frameIndex, global.RZKEY_D);
            ScriptChromaCopyKeyColorName('Fire_Keyboard.chroma', RANDOM_KEYBOARD, frameIndex, global.RZKEY_ENTER);
            ScriptChromaSetKeyColorName(RANDOM_KEYBOARD, frameIndex, global.RZKEY_I, red);
            ScriptChromaSetKeyColorName(RANDOM_KEYBOARD, frameIndex, global.RZKEY_J, red);
            ScriptChromaSetKeyColorName(RANDOM_KEYBOARD, frameIndex, global.RZKEY_K, red);
            ScriptChromaSetKeyColorName(RANDOM_KEYBOARD, frameIndex, global.RZKEY_L, red);
        }
        ScriptChromaPlayAnimationName(RANDOM_KEYBOARD, 1.0);
    }
    
    // show hotkeys: green
    if (keyboard_check_released(ord('Q')))
    {
        green = ScriptToBGRInt(0, 255, 0);
        color = green;

        // ChromaLink        
        animation1D = RANDOM_CHROMA_LINK;
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
        
        // Headset
        animation1D = RANDOM_HEADSET
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
        
        // Keyboard
        animation2D = RANDOM_KEYBOARD
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Keypad
        animation2D = RANDOM_KEYPAD
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Mouse
        animation2D = RANDOM_MOUSE
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Mousepad
        animation1D = RANDOM_MOUSEPAD;
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
    }
    
    // show hotkeys: blue
    if (keyboard_check_released(ord('W')))
    {
        blue = ScriptToBGRInt(0, 0, 255);
        color = blue;

        // ChromaLink        
        animation1D = RANDOM_CHROMA_LINK;
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
        
        // Headset
        animation1D = RANDOM_HEADSET
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
        
        // Keyboard
        animation2D = RANDOM_KEYBOARD
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Keypad
        animation2D = RANDOM_KEYPAD
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Mouse
        animation2D = RANDOM_MOUSE
        ScriptChromaCloseAnimationName(animation2D);
        frameCount = ScriptChromaGetFrameCountName(animation2D);
        device = ScriptChromaGetDeviceName(animation2D);
        maxRow = ScriptChromaGetMaxRow(device);
        maxColumn = ScriptChromaGetMaxColumn(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (i = 0; i < maxRow; ++i)
            {
                for (j = 0; j < maxColumn; ++j)
                {
                    rowColumnIndex = i * maxColumn + j; // only 4 params allowed for DLL methods when string is involved
                    ScriptChromaSet2DColorName(animation2D, frameIndex, rowColumnIndex, color);
                }
            }
        }
        ScriptChromaPlayAnimationName(animation2D, 1.0);
        
        // Mousepad
        animation1D = RANDOM_MOUSEPAD;
        ScriptChromaCloseAnimationName(animation1D);
        frameCount = ScriptChromaGetFrameCountName(animation1D);
        device = ScriptChromaGetDeviceName(animation1D);
        maxLeds = ScriptChromaGetMaxLeds(device);
        for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
        {
            for (led = 0; led < maxLeds; ++led)
            {
                ScriptChromaSet1DColorName(animation1D, frameIndex, led, color);
            }
        }
        ScriptChromaPlayAnimationName(animation1D, 1.0);
    }
    
    // hide hotkeys
    if (keyboard_check_released(ord('8')))
    {
        ScriptChromaCloseAnimationName(RANDOM_KEYBOARD);
        ScriptChromaPlayAnimationName(RANDOM_KEYBOARD, 1.0);
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

