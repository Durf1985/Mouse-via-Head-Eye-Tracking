# Mouse-via-Head-Eye-Tracking
Mouse control using head and eye tracking.

I have attached binary files (.exe), if you are afraid of viruses, you can find the official sites by the names and download from there, or follow the links. In this case, I posted them here personally for myself, if an update is suddenly released and the script stops working, then I need a fully functioning assembly. 

There are 2 modes of operation:
1. With tracking of eye and head movements (Approximately 350-400 dollars, webcam + Tobii Eye Tracker 5 https://gaming.tobii.com/product/eye-tracker-5 / )
2. Tracking only the head (approximately $ 25 for the purchase of a webcam). This webcam was enough for me https://www.a4tech.com/product.aspx?id=236


Who can use it?

1. People who cannot type text with their hands and use a PC (no hands, or paralyzed)

2. People who type a lot of text at a stationary PC and at the same time do not like to take their hand off the keyboard and reach for the mouse to correct a typo in the next paragraph. Maybe on laptops, touchpads are the norm, but for stationary PCs, with an arrangement like on a laptop, they are not released. 

Initially, I created it for myself and for my needs, so I admit:


-the script may not always work

-may not work correctly

- it can hang out of the blue.

And you will have to deal with these problems yourself.

Demonstration of the work https://youtu.be/hCLEpaX12ag
At the very beginning, you may see problems with typing, especially when switching the input language.

Installation:
1. Install eViacam. From here or from the developer's website. https://www.fosshub.com/Enable-Viacam.html
2. Install the script execution environment, AutoHotkey_1.1.33.10_setup. https://www.autohotkey.com
3. Add the AutoHotkey Script.ahk script to the antivirus and Windows Defender exceptions. 
4. Launch eViacam and calibrate sensitivity and dead zones
5. In the eViacam application, go to the webcam settings !!!and turn off the "low light compensation" and Shutter speed!!!, to increase the frame rate (it must be done at each startup, because the driver is standard from Windows and does not remember the latest values). Check the number of frames under the image from the camera, I have 30 fps at a shutter speed of 5 or 6.
6. In the eViacam settings, disable all hotkeys except "Turn on eViacam", assign the F11 key to it (maybe it conflicts in some applications, but I haven't met any in half a year)

7. Disable all functions that are in the profile settings (tabs: Workspace, Click)
8. Run the AutoHotkey Script.ahk script with administrator rights 

Initially, the eViacam program was developed for completely paralyzed people, and therefore the management is not designed for other scenarios.

Just see in AutoHotkeyScript.ahk combination key




