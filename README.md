# musicFromMotion
Convert your slick grooves into sweet tunes.  Body movements are transmitted wirelessly to a host computer and then translated into pre-programmed beats and instruments.  And everything is reconfigurable on the fly; you can serenade or offend the airwaves however you please.

See https://calcium3000.wordpress.com/projects/mfm for more information on the project.


## Hardware
### mFM-Rx
This is the receiver module with which all transmitter nodes communicate.  It consists of a small breakout board for a mini nRF24L01+ transceiver module that plugs directly into the SPI0 bus of a Raspberry Pi (all models).

This module is used in conjunction with TMRh20's RF24 library (see https://github.com/TMRh20/RF24).


### mFM-Tx
Behold the transmitter modules -- the lustrous face of mFM.  Each module consists of a battery, a voltage regulator, a radio transceiver, an accelerometer, and a microcontroller.

When the Rx node pings a Tx node, it reads it accelerometer value and battery status (good or low), sends it back to the Rx node, and takes a quick nap while the other nodes are being pinged.  If the battery voltage is too low the module will sleep until the battery is recharged.

**Note: this version is currently in progress and untested.  Use at your own risk!  And if you do and have any comments or suggestions, please share!**


### License
mFM hardware is licensed under the TAPR Open Hardware License.  See http://tapr.org/ohl.html or LICENSE.txt for full details of the license agreement.

## Software
This section is currently under construction -- i.e. I need to get everything pretty enough to share on the interwebs.  But behold the list of eventual components:
- Tx firmware (Arduino)
- Rx program (C++)
- Rx UDP configurator GUI (optional, Python)
- Main audio program (Pure Data)

### License
All software is licensed under the GNU Public License (GPL) version 3.  See https://www.gnu.org/licenses or COPYING.txt for full details of the license agreement.