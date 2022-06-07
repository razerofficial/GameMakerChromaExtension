function ScriptGlobals() {
	var _info = os_get_info();
	var _is64Bit = _info[? "is64bit"];
	//show_debug_message("os_get_info()="+string(_is64Bit));
	global.ChromaInitialized = false;
	global.ChromaInitResult = 0;
	if (os_type == os_windows)
	{
	    // init globals
		if (_is64Bit)
		{
			global.ChromaDLLName = "CChromaEditorLibrary64.dll";
		}
		else
		{
			global.ChromaDLLName = "CChromaEditorLibrary.dll";
		}
	    global.PluginCloseAnimation = external_define(global.ChromaDLLName, "PluginCloseAnimationD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginCloseAnimationName = external_define(global.ChromaDLLName, "PluginCloseAnimationNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginCloseComposite = external_define(global.ChromaDLLName, "PluginCloseCompositeD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginCopyKeyColorName = external_define(global.ChromaDLLName, "PluginCopyKeyColorNameD", dll_cdecl, ty_real, 4, ty_string, ty_string, ty_real, ty_real);
	    global.PluginGet1DColorName = external_define(global.ChromaDLLName, "PluginGet1DColorNameD", dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
	    global.PluginGet2DColorName = external_define(global.ChromaDLLName, "PluginGet2DColorNameD", dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
	    global.PluginGetCurrentFrameName = external_define(global.ChromaDLLName, "PluginGetCurrentFrameNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginGetDeviceName = external_define(global.ChromaDLLName, "PluginGetDeviceNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginGetDeviceTypeName = external_define(global.ChromaDLLName, "PluginGetDeviceTypeNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginGetKeyColorName = external_define(global.ChromaDLLName, "PluginGetKeyColorD", dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
	    global.PluginGetMaxColumn = external_define(global.ChromaDLLName, "PluginGetMaxColumnD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginGetFrameCountName = external_define(global.ChromaDLLName, "PluginGetFrameCountNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginGetMaxLeds = external_define(global.ChromaDLLName, "PluginGetMaxLedsD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginGetMaxRow = external_define(global.ChromaDLLName, "PluginGetMaxRowD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginInit = external_define(global.ChromaDLLName, "PluginInitD", dll_cdecl, ty_real, 0);
	    global.PluginIsDialogOpen = external_define(global.ChromaDLLName, "PluginIsDialogOpenD", dll_cdecl, ty_real, 0);
	    global.PluginIsInitialized = external_define(global.ChromaDLLName, "PluginIsInitializedD", dll_cdecl, ty_real, 0);
	    global.PluginLoadAnimation = external_define(global.ChromaDLLName, "PluginLoadAnimationD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginOpenAnimation = external_define(global.ChromaDLLName, "PluginOpenAnimationD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginOpenEditorDialog = external_define(global.ChromaDLLName, "PluginOpenEditorDialogD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginPauseAnimationName = external_define(global.ChromaDLLName, "PluginPauseAnimationNameD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginPlayAnimation = external_define(global.ChromaDLLName, "PluginPlayAnimationD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginPlayAnimationName = external_define(global.ChromaDLLName, "PluginPlayAnimationNameD", dll_cdecl, ty_real, 2, ty_string, ty_real);
	    global.PluginPlayAnimationFrameName = external_define(global.ChromaDLLName, "PluginPlayAnimationFrameNameD", dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
	    global.PluginPlayComposite = external_define(global.ChromaDLLName, "PluginPlayCompositeD", dll_cdecl, ty_real, 2, ty_string, ty_real);
	    global.PluginResumeAnimationName = external_define(global.ChromaDLLName, "PluginResumeAnimationNameD", dll_cdecl, ty_real, 2, ty_string, ty_real);
	    global.PluginSet1DColorName = external_define(global.ChromaDLLName, "PluginSet1DColorNameD", dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
	    global.PluginSet2DColorName = external_define(global.ChromaDLLName, "PluginSet2DColorNameD", dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
	    global.PluginSetCurrentFrameName = external_define(global.ChromaDLLName, "PluginSetCurrentFrameNameD", dll_cdecl, ty_real, 2, ty_string, ty_real);
	    global.PluginSetKeyColorName = external_define(global.ChromaDLLName, "PluginSetKeyColorNameD", dll_cdecl, ty_real, 4, ty_string, ty_real, ty_real, ty_real);
	    global.PluginStopAnimation = external_define(global.ChromaDLLName, "PluginStopAnimationD", dll_cdecl, ty_real, 1, ty_real);
	    global.PluginStopComposite = external_define(global.ChromaDLLName, "PluginStopCompositeD", dll_cdecl, ty_real, 1, ty_string);
	    global.PluginUninit = external_define(global.ChromaDLLName, "PluginUninitD", dll_cdecl, ty_real, 0);
    
	    // keyboard enums
	    global.RZKEY_ESC = $0001; // Esc (VK_ESCAPE)
	    global.RZKEY_F1 = $0003; // F1 (VK_F1)
	    global.RZKEY_F2 = $0004; // F2 (VK_F2)
	    global.RZKEY_F3 = $0005; // F3 (VK_F3)
	    global.RZKEY_F4 = $0006; // F4 (VK_F4)
	    global.RZKEY_F5 = $0007; // F5 (VK_F5)
	    global.RZKEY_F6 = $0008; // F6 (VK_F6)
	    global.RZKEY_F7 = $0009; // F7 (VK_F7)
	    global.RZKEY_F8 = $000A; // F8 (VK_F8)
	    global.RZKEY_F9 = $000B; // F9 (VK_F9)
	    global.RZKEY_F10 = $000C; // F10 (VK_F10)
	    global.RZKEY_F11 = $000D; // F11 (VK_F11)
	    global.RZKEY_F12 = $000E; // F12 (VK_F12)
	    global.RZKEY_1 = $0102; // 1 (VK_1)
	    global.RZKEY_2 = $0103; // 2 (VK_2)
	    global.RZKEY_3 = $0104; // 3 (VK_3)
	    global.RZKEY_4 = $0105; // 4 (VK_4)
	    global.RZKEY_5 = $0106; // 5 (VK_5)
	    global.RZKEY_6 = $0107; // 6 (VK_6)
	    global.RZKEY_7 = $0108; // 7 (VK_7)
	    global.RZKEY_8 = $0109; // 8 (VK_8)
	    global.RZKEY_9 = $010A; // 9 (VK_9)
	    global.RZKEY_0 = $010B; // 0 (VK_0)
	    global.RZKEY_A = $0302; // A (VK_A)
	    global.RZKEY_B = $0407; // B (VK_B)
	    global.RZKEY_C = $0405; // C (VK_C)
	    global.RZKEY_D = $0304; // D (VK_D)
	    global.RZKEY_E = $0204; // E (VK_E)
	    global.RZKEY_F = $0305; // F (VK_F)
	    global.RZKEY_G = $0306; // G (VK_G)
	    global.RZKEY_H = $0307; // H (VK_H)
	    global.RZKEY_I = $0209; // I (VK_I)
	    global.RZKEY_J = $0308; // J (VK_J)
	    global.RZKEY_K = $0309; // K (VK_K)
	    global.RZKEY_L = $030A; // L (VK_L)
	    global.RZKEY_M = $0409; // M (VK_M)
	    global.RZKEY_N = $0408; // N (VK_N)
	    global.RZKEY_O = $020A; // O (VK_O)
	    global.RZKEY_P = $020B; // P (VK_P)
	    global.RZKEY_Q = $0202; // Q (VK_Q)
	    global.RZKEY_R = $0205; // R (VK_R)
	    global.RZKEY_S = $0303; // S (VK_S)
	    global.RZKEY_T = $0206; // T (VK_T)
	    global.RZKEY_U = $0208; // U (VK_U)
	    global.RZKEY_V = $0406; // V (VK_V)
	    global.RZKEY_W = $0203; // W (VK_W)
	    global.RZKEY_X = $0404; // X (VK_X)
	    global.RZKEY_Y = $0207; // Y (VK_Y)
	    global.RZKEY_Z = $0403; // Z (VK_Z)
	    global.RZKEY_NUMLOCK = $0112; // Numlock (VK_NUMLOCK)
	    global.RZKEY_NUMPAD0 = $0513; // Numpad 0 (VK_NUMPAD0)
	    global.RZKEY_NUMPAD1 = $0412; // Numpad 1 (VK_NUMPAD1)
	    global.RZKEY_NUMPAD2 = $0413; // Numpad 2 (VK_NUMPAD2)
	    global.RZKEY_NUMPAD3 = $0414; // Numpad 3 (VK_NUMPAD3)
	    global.RZKEY_NUMPAD4 = $0312; // Numpad 4 (VK_NUMPAD4)
	    global.RZKEY_NUMPAD5 = $0313; // Numpad 5 (VK_NUMPAD5)
	    global.RZKEY_NUMPAD6 = $0314; // Numpad 6 (VK_NUMPAD6)
	    global.RZKEY_NUMPAD7 = $0212; // Numpad 7 (VK_NUMPAD7)
	    global.RZKEY_NUMPAD8 = $0213; // Numpad 8 (VK_NUMPAD8)
	    global.RZKEY_NUMPAD9 = $0214; // Numpad 9 (VK_ NUMPAD9*/
	    global.RZKEY_NUMPAD_DIVIDE = $0113; //Divide (VK_DIVIDE)
	    global.RZKEY_NUMPAD_MULTIPLY = $0114; // Multiply (VK_MULTIPLY)
	    global.RZKEY_NUMPAD_SUBTRACT = $0115; // Subtract (VK_SUBTRACT)
	    global.RZKEY_NUMPAD_ADD = $0215; // Add (VK_ADD)
	    global.RZKEY_NUMPAD_ENTER = $0415; // Enter (VK_RETURN - Extended)
	    global.RZKEY_NUMPAD_DECIMAL = $0514; //< Decimal (VK_DECIMAL)
	    global.RZKEY_PRINTSCREEN = $000F; // Print Screen (VK_PRINT)
	    global.RZKEY_SCROLL = $0010; // Scroll Lock (VK_SCROLL)
	    global.RZKEY_PAUSE = $0011; // Pause (VK_PAUSE)
	    global.RZKEY_INSERT = $010F; // Insert (VK_INSERT)
	    global.RZKEY_HOME = $0110; // Home (VK_HOME)
	    global.RZKEY_PAGEUP = $0111; // Page Up (VK_PRIOR)
	    global.RZKEY_DELETE = $020f; // Delete (VK_DELETE)
	    global.RZKEY_END = $0210; // End (VK_END)
	    global.RZKEY_PAGEDOWN = $0211; // Page Down (VK_NEXT)
	    global.RZKEY_UP = $0410; // Up (VK_UP)
	    global.RZKEY_LEFT = $050F; // Left (VK_LEFT)
	    global.RZKEY_DOWN = $0510; // Down (VK_DOWN)
	    global.RZKEY_RIGHT = $0511; // Right (VK_RIGHT)
	    global.RZKEY_TAB = $0201; // Tab (VK_TAB)
	    global.RZKEY_CAPSLOCK = $0301; // Caps Lock(VK_CAPITAL)
	    global.RZKEY_BACKSPACE = $010E; // Backspace (VK_BACK)
	    global.RZKEY_ENTER = $030E; // Enter (VK_RETURN)
	    global.RZKEY_LCTRL = $0501; // Left Control(VK_LCONTROL)
	    global.RZKEY_LWIN = $0502; // Left Window (VK_LWIN)
	    global.RZKEY_LALT = $0503; // Left Alt (VK_LMENU)
	    global.RZKEY_SPACE = $0507; // Spacebar (VK_SPACE)
	    global.RZKEY_RALT = $050B; // Right Alt (VK_RMENU)
	    global.RZKEY_FN = $050C; // Function key.
	    global.RZKEY_RMENU = $050D; // Right Menu (VK_APPS)
	    global.RZKEY_RCTRL = $050E; // Right Control (VK_RCONTROL)
	    global.RZKEY_LSHIFT = $0401; // Left Shift (VK_LSHIFT)
	    global.RZKEY_RSHIFT = $040E; // Right Shift (VK_RSHIFT)
	    global.RZKEY_MACRO1 = $0100; // Macro Key 1
	    global.RZKEY_MACRO2 = $0200; // Macro Key 2
	    global.RZKEY_MACRO3 = $0300; // Macro Key 3
	    global.RZKEY_MACRO4 = $0400; // Macro Key 4
	    global.RZKEY_MACRO5 = $0500; // Macro Key 5
	    global.RZKEY_OEM_1 = $0101; // ~ (tilde/半角/全角) (VK_OEM_3)
	    global.RZKEY_OEM_2 = $010C; // -- (minus) (VK_OEM_MINUS)
	    global.RZKEY_OEM_3 = $010D; // = (equal) (VK_OEM_PLUS)
	    global.RZKEY_OEM_4 = $020C; // [ (left sqaure bracket) (VK_OEM_4)
	    global.RZKEY_OEM_5 = $020D; // ] (right square bracket) (VK_OEM_6)
	    global.RZKEY_OEM_6 = $020E; // \ (backslash) (VK_OEM_5)
	    global.RZKEY_OEM_7 = $030B; // ; (semi-colon) (VK_OEM_1)
	    global.RZKEY_OEM_8 = $030C; // ' (apostrophe) (VK_OEM_7)
	    global.RZKEY_OEM_9 = $040A; // , (comma) (VK_OEM_COMMA)
	    global.RZKEY_OEM_10 = $040B; // . (period) (VK_OEM_PERIOD)
	    global.RZKEY_OEM_11 = $040C; // / (forward slash) (VK_OEM_2)
	    global.RZKEY_EUR_1 = $030D; // "#" (VK_OEM_5)
	    global.RZKEY_EUR_2 = $0402; // \ (VK_OEM_102)
	    global.RZKEY_JPN_1 = $0015; // ¥ ($FF)
	    global.RZKEY_JPN_2 = $040D; // \ ($C1)
	    global.RZKEY_JPN_3 = $0504; // 無変換 (VK_OEM_PA1)
	    global.RZKEY_JPN_4 = $0509; // 変換 ($FF)
	    global.RZKEY_JPN_5 = $050A; // ひらがな/カタカナ ($FF)
	    global.RZKEY_KOR_1 = $0015; // | ($FF)
	    global.RZKEY_KOR_2 = $030D; // (VK_OEM_5)
	    global.RZKEY_KOR_3 = $0402; // (VK_OEM_102)
	    global.RZKEY_KOR_4 = $040D; // ($C1)
	    global.RZKEY_KOR_5 = $0504; // (VK_OEM_PA1)
	    global.RZKEY_KOR_6 = $0509; // 한/영 ($FF)
	    global.RZKEY_KOR_7 = $050A; // ($FF)
	    global.RZKEY_INVALID = $FFFF; // Invalid keys.
	    global.RZLED_LOGO = $0014; // Razer logo
		
		
		global.ChromaInitResult = ScriptChromaInit();
		global.ChromaInvokedInit = true;
		if (global.ChromaInitResult != 0)
		{
			// failed to initialize, avoid making calls to Chroma for this session
		}
	}




}
