# musicFromMotion
Convert your slick grooves into sweet tunes.  Body movements are transmitted wirelessly to a host computer and then translated into pre-programmed beats and instruments.  And everything is reconfigurable on the fly; you can serenade or offend the airwaves however you please.

See https://calcium3000.wordpress.com/projects/mfm for more information on the project.


## mFM-Rx
This is the receiver module with which all transmitter nodes communicate.  It consists of a small breakout board for a mini nRF24L01+ transceiver module that plugs directly into the SPI0 bus of a Raspberry Pi (all models).

This module is used in conjunction with TMRh20's RF24 library (see https://github.com/TMRh20/RF24).


## mFM-Tx
Behold the transmitter modules -- the lustrous face of mFM.  Each module consists of a battery and related circuitry (charger via USB, LDO voltage regulator), a radio transceiver, an accelerometer, and a microcontroller.

When the Rx node pings a Tx node, it reads it accelerometer value and battery status (good or low), sends it back to the Rx node, and takes a quick nap while the other nodes are being pinged.  If the battery voltage is too low the module will sleep until the battery is recharged.


## License
mFM hardware is licensed under the TAPR Open Hardware License.  See http://tapr.org/ohl.html, and LICENSE.txt which is a copy of the license agreement.
