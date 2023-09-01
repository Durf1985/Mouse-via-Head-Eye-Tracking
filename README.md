# Disclaimer: I've uploaded a binary file to this git repository. It's generally advised against doing so, but it suits my specific needs. For safety and authenticity, I strongly recommend downloading the program directly from the developer's official website provided in the link below

## Mouse-via-Head-Eye-Tracking

Mouse control using head and eye tracking.

## Instructions for using the script on AutoHotkey

<details

This script is used to reassign and combine keys on the keyboard, control the mouse and perform specific actions when they are pressed.

### Disabling Keys

* Permanently disable native behavior `CapsLock` key.
* Pressing `LAlt` or `RAlt` will not display the context menu.
* If you don't use `Tobii Eye tracker 5` you can delete `R/LAlt` limitation from .ahk file. If you have Tobii Eye Tracker then set `warp mouse cursor` to `LAlt`

### 1. Head control

* Hold `CapsLock` to turn on head tracking. Release `CapsLock` to turn off head tracking. (Reserved `F11` key in `eViacam`)

### 2. Mouse Key Control

* `CapsLock + s` left mouse button click.
* `CapsLock + d` right mouse button click.
* `CapsLock + a` middle mouse button click.

### 3. Alternate Arrow Control

#### a. Left hand

* `CapsLock + q`: Left.
* `CapsLock + e`: Right.
* `CapsLock + 2`: Up.
* `CapsLock + w`: Down.
* `CapsLock + 1`: Left while holding Ctrl.
* `CapsLock + 3`: Right while holding Ctrl.

#### b.1 Right Hand

* `CapsLock + j`: Left.
* `CapsLock + l`: Right
* `CapsLock + i`: Up
* `CapsLock + k`: Down
* `CapsLock + h`: Home
* `CapsLock + n`: End

##### b.2 Page switching

* `CapsLock + u`: PgUp
* `CapsLock + m`: PgDn

### 4. Mouse wheel

* `CapsLock + r`: Scroll mouse wheel up
* `CapsLock + f`: Scroll mouse wheel down.

### 5. Qtranslate translator management

* `CapsLock + x`: `Ctrl+a` and sends it to Qtranslate.
* `CapsLock + z`: sends selected text to Qtranslate

</details>

## Installation

1. Install `eViacam`. From here or from the developer's website. <https://www.fosshub.com/Enable-Viacam.html>
2. This script work with `AutoHotkey_1.1.36.02` <https://www.autohotkey.com>
3. Add the `AutoHotkey_Script.ahk` script to the antivirus and Windows Defender exceptions.
4. Launch `eViacam` and calibrate `sensitivity` and `dead zones`
5. In the `eViacam` application, go to the webcam settings `and turn off the "low light compensation"!!!!` and `Shutter speed`. Check the number of frames under the image from the camera, I have 30 fps at a shutter speed of 5 or 6.
6. In the `eViacam` settings, disable all hotkeys except `Turn on eViacam`, assign the `F11` key to it (maybe it conflicts in some applications, but I haven't met any in two years)

7. Disable all functions that are in the `profile settings` (tabs: `Workspace`, `Click`)
8. Run the AutoHotkey Script.ahk script with administrator rights

Initially, the eViacam program was developed for completely paralyzed people, and therefore the management is not designed for other scenarios.
