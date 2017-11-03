# GameMaker Chroma Extension - GameMaker Extension to control lighting for Razer Chroma

**Table of Contents**

* [Related](#related)
* [Frameworks supported](#frameworks-supported)
* [Getting Started](#getting-started)
* [Assets](#assets)
* [API](#api)
* [Examples](#examples)

<a name="related"></a>
## Related

- [CChromaEditor](https://github.com/RazerOfficial/CChromaEditor) - C++ Native MFC Library for playing and editing Chroma animations

- [GameMakerChromaExtension](https://github.com/RazerOfficial/GameMakerChromaExtension) - GameMaker Extension to control lighting for Razer Chroma

- [HTML5ChromaSDK](https://github.com/RazerOfficial/HTML5ChromaSDK) - JS Library for playing Chroma animations

- [UE4ChromaSDK](https://github.com/RazerOfficial/UE4ChromaSDK) - Unreal Engine 4 (UE4) Blueprint library to control lighting for Razer Chroma

- [UnityNativeChromaSDK](https://github.com/RazerOfficial/UnityNativeChromaSDK) - Unity native library for the ChromaSDK

- [UnityChromaSDK](https://github.com/RazerOfficial/UnityChromaSDK) - Unity C# library for the Chroma Rest API

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

* [ScriptChromaCloseAnimationName](#ScriptChromaCloseAnimationName)
* [ScriptChromaCloseComposite](#ScriptChromaCloseComposite)
* [ScriptChromaCopyKeyColorName](#ScriptChromaCopyKeyColorName)
* [ScriptChromaGet1DColorName](#ScriptChromaGet1DColorName)
* [ScriptChromaGet2DColorName](#ScriptChromaGet2DColorName)
* [ScriptChromaGetCurrentFrameName](#ScriptChromaGetCurrentFrameName)
* [ScriptChromaGetDeviceName](#ScriptChromaGetDeviceName)
* [ScriptChromaGetDeviceTypeName](#ScriptChromaGetDeviceTypeName)
* [ScriptChromaGetFrameCountName](#ScriptChromaGetFrameCountName)
* [ScriptChromaGetKeyColorName](#ScriptChromaGetKeyColorName)
* [ScriptChromaGetMaxColumn](#ScriptChromaGetMaxColumn)
* [ScriptChromaGetMaxLeds](#ScriptChromaGetMaxLeds)
* [ScriptChromaGetMaxRow](#ScriptChromaGetMaxRow)
* [ScriptChromaInit](#ScriptChromaInit)
* [ScriptChromaOpenEditorDialog](#ScriptChromaOpenEditorDialog)
* [ScriptChromaPauseAnimationName](#ScriptChromaPauseAnimationName)
* [ScriptChromaPlayAnimationName](#ScriptChromaPlayAnimationName)
* [ScriptChromaPlayAnimationFrameName](#ScriptChromaPlayAnimationFrameName)
* [ScriptChromaPlayComposite](#ScriptChromaPlayComposite)
* [ScriptChromaResumeAnimationName](#ScriptChromaResumeAnimationName)
* [ScriptChromaSet1DColorName](#ScriptChromaSet1DColorName)
* [ScriptChromaSet2DColorName](#ScriptChromaSet2DColorName)
* [ScriptChromaSetCurrentFrameName](#ScriptChromaSetCurrentFrameName)
* [ScriptChromaSetKeyColorName](#ScriptChromaSetKeyColorName)
* [ScriptChromaStopComposite](#ScriptChromaStopComposite)
* [ScriptChromaUninit](#ScriptChromaUninit)


The extension methods are only available on the `Windows` platform. Use `GMS` to detect the `Windows` os.

```
if (os_type == os_windows)
{
   // do Chroma
}
```

When the first room loads, run GMS script to set the default global variables. These globals are what connects the `Chroma` DLL methods.

See [ScriptGlobals.gml](scripts/ScriptGlobals.gml).

The API has various methods with the `D` suffix where `double` return-type/parameters were used. This is to support engines like `GameMaker` which have a limited number of data-types.


<a name="ScriptChromaCloseAnimationName"></a>
**ScriptChromaCloseAnimationName**

The helper script closes an animation to reload from disk. The method takes a string parameter of the animation name.

```
animation = 'Random_Keyboard.chroma';
ScriptChromaCloseAnimationName(animation);
```


<a name="ScriptChromaCopyKeyColorName"></a>
**ScriptChromaCopyKeyColorName**

The helper script copies the key color from a source animation to the target animation for the key of the animation frame. The source and target animation are strings. The frame index is a number from 0 to the frame count. The key is a integer of the key number.

See [ScriptGlobals.gml](scripts/ScriptGlobals.gml) for the list of key values.

```
sourceAnimation = 'Fire_Keyboard.chroma';
targetAnimation = 'Random_Keyboard.chroma';
frameIndex = 0;
key = gloval.RZKEY_W;
ScriptChromaCopyKeyColorName(sourceAnimation, targetAnimation, frameIndex, key);
```


<a name="ScriptChromaGetFrameCountName"></a>
**ScriptChromaGetFrameCountName**

The helper script returns the number of animation frames. The animation parameter is a string.

```
animation = 'Random_Keyboard.chroma';
frameCount = ScriptChromaGetFrameCountName(animation);
```


<a name="ScriptChromaInit"></a>
**ScriptChromaInit**

The helper script initializes the `ChromaSDK` and has no parameters.

```
ScriptChromaInit();
```


<a name="ScriptChromaOpenEditorDialog"></a>
**ScriptChromaOpenEditorDialog**

The helper script opens an edit dialog for the animation. The animation parameter is a string. The edit dialog is modal so only one animation can be edited at a time.

```
animation = 'Random_Keyboard.chroma';
ScriptChromaOpenEditorDialog(animation);
```


<a name="ScriptChromaPauseAnimationName"></a>
**ScriptChromaPauseAnimationName**

The helper script pauses an animation. The animation parameter is a string.

```
animation = 'Random_Keyboard.chroma';
ScriptChromaPauseAnimationName(animation);
```


<a name="ScriptChromaPlayAnimationName"></a>
**ScriptChromaPlayAnimationName**

The helper script plays an animation. The animation parameter is a string. The animation can play with loop `ON` or `OFF`.

```
animation = 'Random_Keyboard.chroma';
loopOn = 1.0;
loopOff = 0.0;
loop = loopOn;
ScriptChromaPlayAnimationName(animation, loop);
```


<a name="ScriptChromaPlayAnimationFrameName"></a>
**ScriptChromaPlayAnimationFrameName**

The helper script plays an animation. The animation parameter is a string. The animation can play with loop `ON` or `OFF` starting at the `frameId`.

```
animation = 'Random_Keyboard.chroma';
loopOn = 1.0;
loopOff = 0.0;
loop = loopOn;
frameId = 12;
ScriptChromaPlayAnimationFrameName(animation, frameId, loop);
```


<a name="ScriptChromaPlayComposite"></a>
**ScriptChromaPlayComposite**

The helper script plays a set of animations. The composite is a string. The animation can play with loop `ON` or `OFF`. This method will play the set of animations which includes ChromaLink, Headset, Keyboard, Keypad, Mouse, and Mousepad.

```
composite = "Random";
loopOn = 1.0;
loopOff = 0.0;
loop = loopOn;
ScriptChromaPlayComposite(composite, loop);
```


<a name="ScriptChromaResumeAnimationName"></a>
**ScriptChromaResumeAnimationName**

The helper script will resume playing a paused animation. The animation is a string. The animation can resume with loop `ON` or `OFF`.

```
animation = 'Random_Keyboard.chroma';
loopOn = 1.0;
loopOff = 0.0;
loop = loopOn;
ScriptChromaResumeAnimationName(animation, loop);
```


<a name="ScriptChromaSetKeyColorName"></a>
**ScriptChromaSetKeyColorName**

The helper script assigns the key color to the animation frame. The animation is a string. The frame index is a number from 0 to the frame count. The key the integer of the key number. The color is a `COLORREF` integer.

See [ScriptGlobals.gml](scripts/ScriptGlobals.gml) for the list of key values.

```
animation = 'Random_Keyboard.chroma';
frameIndex = 0;
key = global.RZKEY_W;
red = ScriptToBGRInt(255, 0, 0);
green = ScriptToBGRInt(0, 255, 0);
blue = ScriptToBGRInt(0, 0, 255);
color = red; 
ScriptChromaSetKeyColorName(animation, frameIndex, key, color);
```


<a name="ScriptChromaGetKeyColorName"></a>
**ScriptChromaGetKeyColorName**

The helper script gets the key color of the animation frame. The animation is a string. The frame index is a number from 0 to the frame count. The key the integer of the key number. The color is a `COLORREF` integer.

See [ScriptGlobals.gml](scripts/ScriptGlobals.gml) for the list of key values.

```
animation = 'Random_Keyboard.chroma';
frameIndex = 0;
key = global.RZKEY_W;
color = ScriptChromaGetKeyColorName(animation, frameIndex, key);
```


<a name="ScriptChromaStopComposite"></a>
**ScriptChromaStopComposite**

The helper script stops a set of animations. The composite is a string. This method will stop the set of animations which includes ChromaLink, Headset, Keyboard, Keypad, Mouse, and Mousepad.

```
composite = "Random";
ScriptChromaStopComposite(composite);
```


<a name="ScriptChromaUninit"></a>
**ScriptChromaUninit**

The helper script uninitializes the `ChromaSDK` and has no parameters.

```
ScriptChromaInit();
```


<a name="ScriptChromaCloseComposite"></a>
**ScriptChromaCloseComposite**

The helper script closes a set of animations so they can be reloaded from disk. The set of animations will be stopped if playing.

```
composite = "Random";
ScriptChromaCloseComposite(composite);
```


<a name="ScriptChromaGet1DColorName"></a>
**ScriptChromaGet1DColorName**

The helper script gets the animation color for a frame given the 1D led. The led should be greater than or equal to 0 and less than the MaxLeds.

```
animation1D = 'Random_ChromaLink.chroma';
frameCount = ScriptChromaGetFrameCountName(animation1D);
device = ScriptChromaGetDeviceName(animation1D);
maxLeds = ScriptChromaGetMaxLeds(device);
for (frameIndex = 0; frameIndex < frameCount; ++frameIndex)
{
    for (led = 0; led < maxLeds; ++led)
    {
        color = ScriptChromaGet1DColorName(animation1D, frameIndex, led);
    }
}
```


<a name="ScriptChromaGet2DColorName"></a>
**ScriptChromaGet2DColorName**

The helper script gets the animation color for a frame given the 2D row and column. The row should be greater than or equal to 0 and less than the MaxRow. The column should be greater than or equal to 0 and less than the MaxColumn

```
animation2D = 'Random_Keyboard.chroma'
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
            color = ScriptChromaGet2DColorName(animation2D, frameIndex, rowColumnIndex);
        }
    }
}
```


<a name="ScriptChromaGetCurrentFrameName"></a>
**ScriptChromaGetCurrentFrameName**

The helper script gets the current frame of an animation.

```
animation2D = 'Random_Keyboard.chroma'
currentFrame = ScriptChromaGetCurrentFrameName(animation2D);
```


<a name="ScriptChromaSetCurrentFrameName"></a>
**ScriptChromaSetCurrentFrameName**

The helper script sets the current frame of an animation.

```
animation2D = 'Random_Keyboard.chroma'
frameId = 12;
ScriptChromaSetCurrentFrameName(animation2D, frameId);
```


<a name="ScriptChromaGetDeviceName"></a>
**ScriptChromaGetDeviceName**

The helper script returns a number from the EChromaSDKDevice1DEnum or EChromaSDKDevice2DEnum of a Chroma animation respective to the deviceType, as an integer upon success. Returns -1 upon failure.

```
// 1D device
animation1D = 'Random_ChromaLink.chroma';
device = ScriptChromaGetDeviceName(animation2D);

// 2D device
animation2D = 'Random_Keyboard.chroma'
device = ScriptChromaGetDeviceName(animation2D);
```


<a name="ScriptChromaGetDeviceTypeName"></a>
**ScriptChromaGetDeviceTypeName**

The helper script returns a number from the EChromaSDKDeviceTypeEnum of a Chroma animation as an integer upon success. Returns -1 upon failure.

```
// 1D device type
animation1D = 'Random_ChromaLink.chroma';
deviceType = ScriptChromaGetDeviceTypeName(animation2D);

// 2D device type
animation2D = 'Random_Keyboard.chroma'
deviceType = ScriptChromaGetDeviceTypeName(animation2D);
```


<a name="ScriptChromaGetMaxColumn"></a>
**ScriptChromaGetMaxColumn**

The helper script returns the MAX COLUMN given the EChromaSDKDevice2DEnum device as an integer upon success. Returns -1 upon failure.

```
animation2D = 'Random_Keyboard.chroma'
device = ScriptChromaGetDeviceName(animation2D);
maxColumn = ScriptChromaGetMaxColumn(device);
```


<a name="ScriptChromaGetMaxLeds"></a>
**ScriptChromaGetMaxLeds**

The helper script returns the MAX LEDS given the EChromaSDKDevice1DEnum device as an integer upon success. Returns -1 upon failure.

```
animation1D = 'Random_ChromaLink.chroma';
device = ScriptChromaGetDeviceName(animation1D);
maxLeds = ScriptChromaGetMaxLeds(device);
```


<a name="ScriptChromaGetMaxRow"></a>
**ScriptChromaGetMaxRow**

The helper script returns the MAX ROW given the EChromaSDKDevice2DEnum device as an integer upon success. Returns -1 upon failure.

```
animation2D = 'Random_Keyboard.chroma'
device = ScriptChromaGetDeviceName(animation2D);
maxRow = ScriptChromaGetMaxRow(device);
```


<a name="ScriptChromaSet1DColorName"></a>
**ScriptChromaSet1DColorName**

The helper script sets the animation color for a frame given the 1D led. The led should be greater than or equal to 0 and less than the MaxLeds.

```
green = ScriptToBGRInt(0, 255, 0);
color = green;
animation1D = 'Random_ChromaLink.chroma';
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
```


<a name="ScriptChromaSet2DColorName"></a>
**ScriptChromaSet2DColorName**

The helper script sets the animation color for a frame given the 2D row and column. The row should be greater than or equal to 0 and less than the MaxRow. The column should be greater than or equal to 0 and less than the MaxColumn.

```
animation2D = 'Random_Keyboard.chroma'
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
```


<a name="examples"></a>
## Examples

[ScriptAnimateOnKeyRelease.gml](scripts/ScriptAnimateOnKeyRelease.gml) - detects key released events to invoke methods. This script is called from the room object released keyboard event.

[ScriptDrawUI.gml](scripts/ScriptDrawUI.gml) - displays the keyboard shortcuts for the example. This script is called from the room object draw event.

[ScriptGlobals.gml](scripts/ScriptGlobals.gml) - initializes the globals and sets the DLL extension methods. This script is called from the room object create event. This is also where the keyboard enums are listed.

[ScriptToBGRInt.gml](scripts/ScriptToBGRInt.gml) - Converts red (0 to 255), green (0 to 255), blue (0 to 255) arguments into a BGR integer `COLORREF`.

![image_6](images/image_6.png)

Helper scripts wrap the Chroma DLL methods to make sure only defined methods are invoked.

* [ScriptChromaCloseAnimationName.gml](scripts/ScriptChromaCloseAnimationName.gml)

* [ScriptChromaCloseComposite.gml](scripts/ScriptChromaCloseComposite.gml)

* [ScriptChromaCopyKeyColorName.gml](scripts/ScriptChromaCopyKeyColorName.gml)

* [ScriptChromaGet1DColorName.gml](scripts/ScriptChromaGet1DColorName)

* [ScriptChromaGet2DColorName.gml](scripts/ScriptChromaGet2DColorName)

* [ScriptChromaGetCurrentFrameName.gml](scripts/ScriptChromaGetCurrentFrameName.gml)

* [ScriptChromaGetDeviceName.gml](scripts/ScriptChromaGetDeviceName)

* [ScriptChromaGetDeviceTypeName.gml](scripts/ScriptChromaGetDeviceTypeName)

* [ScriptChromaGetFrameCountName.gml](scripts/ScriptChromaGetFrameCountName.gml)

* [ScriptChromaGetKeyColorName.gml](scripts/ScriptChromaGetKeyColorName.gml)

* [ScriptChromaGetMaxColumn.gml](scripts/ScriptChromaGetMaxColumn)

* [ScriptChromaGetMaxLeds.gml](scripts/ScriptChromaGetMaxLeds)

* [ScriptChromaGetMaxRow.gml](scripts/ScriptChromaGetMaxRow)

* [ScriptChromaInit.gml](scripts/ScriptChromaInit.gml)

* [ScriptChromaOpenEditorDialog.gml](scripts/ScriptChromaOpenEditorDialog.gml)

* [ScriptChromaPauseAnimationName.gml](scripts/ScriptChromaPauseAnimationName.gml)

* [ScriptChromaPlayAnimationName.gml](scripts/ScriptChromaPlayAnimationName.gml)

* [ScriptChromaPlayAnimationFrameName.gml](scripts/ScriptChromaPlayAnimationFrameName.gml)

* [ScriptChromaPlayComposite.gml](scripts/ScriptChromaPlayComposite.gml)

* [ScriptChromaResumeAnimationName.gml](scripts/ScriptChromaResumeAnimationName.gml)

* [ScriptChromaSet1DColorName.gml](scripts/ScriptChromaSet1DColorName)

* [ScriptChromaSet2DColorName.gml](scripts/ScriptChromaSet2DColorName)

* [ScriptChromaSetCurrentFrameName.gml](scripts/ScriptChromaSetCurrentFrameName.gml)

* [ScriptChromaSetKeyColorName.gml](scripts/ScriptChromaSetKeyColorName.gml)

* [ScriptChromaStopComposite.gml](scripts/ScriptChromaStopComposite.gml)

* [ScriptChromaUninit.gml](scripts/ScriptChromaUninit.gml)
