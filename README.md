# GameMaker Chroma Extension - GameMaker Extension to control lighting for Razer Chroma

**Table of Contents**

* [Frameworks supported](#frameworks-supported)
* [Getting Started](#getting-started)
* [Assets](#assets)
* [API](#api)
* [Examples](#examples)

<a name="frameworks-supported"></a>
## Frameworks supported
- GameMaker 1.4 [download](https://www.yoyogames.com/downloads/gm-studio/release-notes-studio.html)
- Windows

<a name="getting-started"></a>
## Getting Started

1 Import the [GameMakerChromaExtension.gmez](https://github.com/razerofficial/GameMakerChromaExtension/releases/tag/GMS_1_4) extension

2 Double-click the `ChromaSDK` extension

![image_1](images/image_1.png)

3 On the `Import Resources` tab, expand `Included Files`, select `CChromaEditorLibrary.dll` and click `Import All`

![image_2](images/image_2.png)

4 `CChromaEditorLibrary.dll` should appear in your project's `Included Files` folder
 
![image_3](images/image_3.png)

5 Double-click a `Chroma` animation to associate the `.chroma` extension with the [CChromaEditor](https://github.com/RazerOfficial/CChromaEditor)

![image_4](images/image_4.png)

6 Once associated, double-click a `Chroma` animation to bring up the animation editor

![image_5](images/image_5.png)

7 In order to see the lighting animations play, use the `File->Create Application` menu item to create a `Windows` application. After the installer completes, the application will play `Chroma` animations.
 
![image_7](images/image_7.png)

<a name="assets"></a>
## Assets

This extension supports the `Chroma` animation exports from [UE4](https://github.com/razerofficial/UE4ChromaSDK), [Unity](https://github.com/razerofficial/UnityNativeChromaSDK/), and [GameMaker](https://github.com/razerofficial/GameMakerChromaExtension).

Add `Chroma` animation files to the project's `Included Files` to make the animations accessible from `GMS` script.

![image_4](images/image_4.png)

<a name="api"></a>
## API

The extension methods are only available on the `Windows` platform. Use `GMS` to detect the `Windows` os.

```
if (os_type == os_windows)
{
   // do Chroma
}
```

When the first room loads, run GMS script to set the default global variables. These globals will be used to invoke `Chroma` DLL methods.

```
// init globals
global.PluginIsInitialized = external_define('CChromaEditorLibrary.dll', 'PluginIsInitializedD', dll_cdecl, ty_real, 0);
global.PluginInit = external_define('CChromaEditorLibrary.dll', 'PluginInitD', dll_cdecl, ty_real, 0);
global.PluginUninit = external_define('CChromaEditorLibrary.dll', 'PluginUninitD', dll_cdecl, ty_real, 0);
global.PluginIsDialogOpen = external_define('CChromaEditorLibrary.dll', 'PluginIsDialogOpenD', dll_cdecl, ty_real, 0);
global.PluginOpenEditorDialog = external_define('CChromaEditorLibrary.dll', 'PluginOpenEditorDialogD', dll_cdecl, ty_real, 1, ty_string);
global.PluginOpenAnimation = external_define('CChromaEditorLibrary.dll', 'PluginOpenAnimationD', dll_cdecl, ty_real, 1, ty_string);
global.PluginPlayAnimation = external_define('CChromaEditorLibrary.dll', 'PluginPlayAnimationD', dll_cdecl, ty_real, 1, ty_real);
global.PluginLoadAnimation = external_define('CChromaEditorLibrary.dll', 'PluginLoadAnimationD', dll_cdecl, ty_real, 1, ty_real);
global.PluginStopAnimation = external_define('CChromaEditorLibrary.dll', 'PluginStopAnimationD', dll_cdecl, ty_real, 1, ty_real);
global.PluginCloseAnimation = external_define('CChromaEditorLibrary.dll', 'PluginCloseAnimationD', dll_cdecl, ty_real, 1, ty_real);
```

The API has various methods with the `D` suffix where `double` return-type/parameters were used. This is to support engines like `GameMaker` which have a limited number of data-types.

**PluginIsInitialized**

Returns true if the plugin has been initialized. Returns false if the plugin is uninitialized.

`DLL`

```C++
extern "C" EXPORT_API double PluginIsInitializedD();
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginIsInitialized != -1)
{
    // is initialized?
    return external_call(global.PluginIsInitialized);
}
else
{
    return false;
}
```

**PluginInit**

Initializes the `ChromaSDK`. Returns 0 upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginInitD();
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginInit != -1)
{
    // init
    return external_call(global.PluginInit);
}
```

**PluginUninit**

Uninitializes the `ChromaSDK`. Returns 0 upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginUninitD();
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginUninit != -1)
{
    // uninit
    return external_call(global.PluginUninit);
}
```

**PluginIsDialogOpen**

The editor dialog is a non-blocking modal window, this method returns true if the modal window is open, otherwise false.

`DLL`

```C++
extern "C" EXPORT_API double PluginIsDialogOpenD();
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginIsDialogOpen != -1 && global.PluginOpenEditorDialog != -1)
{
    // edit animation
    if (external_call(global.PluginIsDialogOpen) == 0.0)
    {
        external_call(global.PluginOpenEditorDialog, argument0);
    }
}
```

**PluginOpenEditorDialog**

Opens a `Chroma` animation file with the `.chroma` extension. Returns zero upon success. Returns -1 if there was a failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginOpenEditorDialogD(char* path);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginIsDialogOpen != -1 && global.PluginOpenEditorDialog != -1)
{
    // edit animation
    if (external_call(global.PluginIsDialogOpen) == 0.0)
    {
        external_call(global.PluginOpenEditorDialog, argument0);
    }
}
```

![image_5](images/image_5.png)

**PluginOpenAnimation**

Opens a `Chroma` animation file so that it can be played. Returns an animation id >= 0 upon success. Returns -1 if there was a failure. The animation id is used in most of the API methods.

`DLL`

```C++
extern "C" EXPORT_API double PluginOpenAnimationD(char* path);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginOpenAnimation != -1)
{
    // open animation
    return external_call(global.PluginOpenAnimation, 'RandomKeyboardEffect.chroma');
}
```

**PluginLoadAnimation**

Loads `Chroma` effects so that the animation can be played immediately. Returns the animation id upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginLoadAnimationD(double animationId);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginLoadAnimation != -1)
{
    // load animation
    return external_call(global.PluginLoadAnimation, animationId);
}
```

**PluginUnloadAnimation**

Unloads `Chroma` effects to free up resources. Returns the animation id upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginUnloadAnimationD(double animationId);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginUnloadAnimation != -1)
{
    // play animation
    return external_call(global.PluginUnloadAnimation, animationId);
}
```

**PluginPlayAnimation**

Plays the `Chroma` animation. This will load the animation, if not loaded previously. Returns the animation id upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginPlayAnimationD(double animationId);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginPlayAnimation != -1)
{
    // play animation
    return external_call(global.PluginPlayAnimation, animationId);
}
```

**PluginStopAnimation**

Stops animation playback if in progress. Returns the animation id upon success. Returns -1 upon failure.

`DLL`

```C++
extern "C" EXPORT_API double PluginStopAnimationD(double animationId);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginStopAnimation != -1)
{
    // stop the animation
    return external_call(global.PluginStopAnimation, animationId);
}
```

**PluginCloseAnimation**

Closes the `Chroma` animation to free up resources. Returns the animation id upon success. Returns -1 upon failure. This might be used while authoring effects if there was a change necessitating re-opening the animation. The animation id can no longer be used once closed.

`DLL`

```C++
extern "C" EXPORT_API double PluginCloseAnimationD(double animationId);
```

`GMS`

```
// check if the plugin method has been set globally
if (global.PluginCloseAnimation != -1)
{
    // close animation and free resources
    return external_call(global.PluginCloseAnimation, animationId);
}
```

<a name="examples"></a>
## Examples

[ScriptDrawUI.gml](scripts/ScriptDrawUI.gml) - displays the keyboard shortcuts for the example. This script is called from the room object draw event.

![image_6](images/image_6.png)

[ScriptGlobals.gml](scripts/ScriptGlobals.gml) - initializes the globals and sets the DLL extension methods. This script is called from the room object create event.

[ScriptPluginAnimateOnKeyRelease.gml](scripts/ScriptPluginAnimateOnKeyRelease.gml) - detects key released events to invoke methods. This script is called from the room object released keyboard event.

[ScriptAnimationOpenAndPlay.gml](scripts/ScriptAnimationOpenAndPlay.gml) - opens and plays the animation passed to the function.

[ScriptAnimationStop.gml](scripts/ScriptAnimationStop.gml) - stops the animation passed to the function.

[ScriptUninit.gml](scripts/ScriptUninit.gml) - uninitialized the extension before exiting
