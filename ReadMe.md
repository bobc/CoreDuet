
A fork of CoreDuet with files added to enable use within Arduino IDE

Installation
------------

1. git clone or download zip.
2. copy to personal Arduino/hardware folder
    [windows] e.g c:\users\bob\Documents\Arduino\hardware\Duet
3. Restart Arduino IDE


Usage
-----
1. Select Duet Board from boards menu.
2. Note, only the native USB port is aavailable on Duet. You may need to do Reset-ERASE sequence to get into bootloader.
3. Compile sketch and download to Duet COM port.
4. After download, press Reset button 