#! /usr/bin/python3
#
#  mFM-RxGUI.py
#
#  Copyright 2017  Calvin A. Cherry (calvincherry@gmail.com)
#                  calcium3000.wordpress.com
# 
# Use:
#   This script basically just runs the mFM-Rx program with a fancy little
#   GUI to open/close a UDP socket and set the server and port.  It assumes
#   mFM_logo.png is in the same folder, but you can remove that section if
#   you'd like -- I won't take it personally.  Here's how to run this script:
#   
#   sudo python mFM-RxGUI.py
#   
#   When picking a port number, refer to Wikipedia to make sure you're not
#   interfering with some other process:
#   https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
# 
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.
# 

import os
from PIL import Image, ImageTk
import signal
from subprocess import Popen
import sys
# Import Tkinter depending on Python version
if sys.version_info[0] == 2:
    import Tkinter as tk
else:
    import tkinter as tk


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# CONSTANTS
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
BACKGROUND_COLOR = "#dddddd"
FRAME_COLOR = "#eeeeee"
IP_LABEL_TEXT = "IP Address:"
PORT_LABEL_TEXT = "Port Number:"
CLOSE_BUTTON_TEXT = "Close Socket"
UDP_BUTTON_TEXT = "Open UDP Socket"
NO_UDP_SET_TEXT = "No address/port active"
DEFAULT_IP_ADDRESS = "127.0.0.1"
DEFAULT_PORT_NUM = 3001
VALID_PORT_HIGH = 65535
VALID_PORT_LOW = 1024
X_PADDING = 10
Y_PADDING_HIGH = 10
Y_PADDING_LOW = 2


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# FUNCTIONS 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Close UDP socket
def close_socket():
    os.kill(rx_process.pid, signal.SIGTERM)
    status_text.set(NO_UDP_SET_TEXT)


# Open UDP socket using IP address and port number from text entries
def open_socket():
    new_ip = ip_entry_text.get()
    if not valid_ip(new_ip):
        status_text.set("Please enter a valid IP address")
        return

    try:
        new_port = port_entry_text.get()
        if not valid_port(new_port):
            raise ValueError
    except ValueError:
        status_text.set("Please enter a port number between 1024 and 65535")
        return

    global rx_process
    rx_process = Popen(['./Rx_GUI', new_ip, str(new_port)])

    update_status(status_text, new_ip, new_port)


# Update status bar with IP address and port number
def update_status(status, ip_address, port_num):
    text = "IP address = " + ip_address + "    Port number = " + str(port_num)
    status.set(text)


# Determine if input string is a valid IP address -- i.e. follows the
# format of ###.###.###.### where ### is between 0 and 255.  Thanks to
# user Alex Martelli of StackExchange for this snippet
# (https://stackoverflow.com/questions/3462784/check-if-a-string-
# matches-an-ip-address-pattern-in-python).
def valid_ip(s):
    pieces = s.split('.')
    if len(pieces) != 4: return False
    try: return all(0 <= int(p) < 256 for p in pieces)
    except ValueError: return False


# Determine if the port number is within the valid range.
def valid_port(port):
    if (VALID_PORT_LOW <= port <= VALID_PORT_HIGH): return True
    return False


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# MAIN PROGRAM
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Tkinter class constructor
root = tk.Tk()
root.configure(background=BACKGROUND_COLOR)
icon = tk.PhotoImage(file=r'mfm_logo.png')
root.tk.call('wm', 'iconphoto', root._w, icon)
root.wm_title("mFM UDP Configuration")

# Images
logo_png = Image.open("mfm_logo.png")
logo_image = ImageTk.PhotoImage(logo_png)

# String variables
ip_entry_text = tk.StringVar()
ip_entry_text.set(DEFAULT_IP_ADDRESS)

port_entry_text = tk.IntVar()
port_entry_text.set(DEFAULT_PORT_NUM)

status_text = tk.StringVar()
status_text.set(NO_UDP_SET_TEXT)

# IP address label and entry
ip_frame = tk.Frame(root, background=FRAME_COLOR, bd=2, relief=tk.GROOVE, padx=X_PADDING, pady=Y_PADDING_HIGH)
ip_label = tk.Label(ip_frame, text=IP_LABEL_TEXT, background=FRAME_COLOR)
ip_label.grid(row=0, column=0, padx=X_PADDING, pady=Y_PADDING_LOW, sticky=tk.W)
ip_entry = tk.Entry(ip_frame, textvariable=ip_entry_text)
ip_entry.grid(row=1, column=0, padx=X_PADDING, pady=Y_PADDING_LOW)
ip_frame.grid(row=0, column=0)

# Port number label and entry
port_frame = tk.Frame(root, background=FRAME_COLOR, bd=2, relief=tk.GROOVE, padx=X_PADDING, pady=Y_PADDING_HIGH)
port_label = tk.Label(port_frame, text=PORT_LABEL_TEXT, background=FRAME_COLOR)
port_label.grid(row=0, column=0, padx=X_PADDING, pady=Y_PADDING_LOW, sticky=tk.W)
port_entry = tk.Entry(port_frame, textvariable=port_entry_text)
port_entry.grid(row=1, column=0, padx=X_PADDING, pady=Y_PADDING_LOW)
port_frame.grid(row=1, column=0)

# Set UDP parameters and close buttons
buttons_frame = tk.Frame(root, background=BACKGROUND_COLOR, padx=X_PADDING, pady=Y_PADDING_HIGH)
open_udp_button = tk.Button(buttons_frame, text=UDP_BUTTON_TEXT, padx=X_PADDING, command=open_socket)
open_udp_button.grid(row=0, column=0, padx=X_PADDING, pady=Y_PADDING_LOW)
close_button = tk.Button(buttons_frame, text=CLOSE_BUTTON_TEXT, padx=X_PADDING, command=close_socket)
close_button.grid(row=1, column=0, padx=X_PADDING, pady=Y_PADDING_LOW)
buttons_frame.grid(row=2, column=0)

# mFM Logo
mFM_logo = tk.Label(image=logo_image, background=BACKGROUND_COLOR)
mFM_logo.image = logo_image
mFM_logo.grid(row=0, column=1, rowspan=3)

# Status bar
status_frame = tk.Frame(root, background=FRAME_COLOR, bd=2, relief=tk.SUNKEN)
status = tk.Label(status_frame, textvariable=status_text, background=FRAME_COLOR).grid(row=0, column=0)
status_frame.grid(row=3, column=0, columnspan=2, sticky=tk.E+tk.W)

# Run main loop
root.mainloop()
