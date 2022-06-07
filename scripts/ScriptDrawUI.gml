function ScriptDrawUI() {
	if (global.ChromaInvokedInit)
	{
		if (global.ChromaInitResult == 0)
		{
			message = "The Chroma SDK has been initialized.";
			message += "#Press (1) to play animation";
			message += "#Press (2) to loop animation";
			message += "#Press (3) to stop animation";
			message += "#Press (4) to pause animation";
			message += "#Press (5) to resume animation";
			message += "#Press (6) to resume loop animation";
			message += "#Press (7) to show hotkeys";
			message += "#Press (8) to hide hotkeys";
			message += "#Press (Q) to show all green";
			message += "#Press (W) to show all blue";
			message += "#Press (E) to open the editor dialog";
		}
		else
		{
			message = "The Chroma SDK failed to initialize! " + string(global.ChromaInitResult);
		}
	}
	else
	{
		message = "Chroma has not been initialized or is not available!";
	}
	message += "#Press (ESC) to quit";
	draw_text(0, 0, string_hash_to_newline(message));

}
