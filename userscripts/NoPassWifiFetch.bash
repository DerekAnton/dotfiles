#!/bin/bash

#
# Finds the wireless network with the highest signal and returns it's SSID
#

# Dumps a list of avaliable wifi network names (SSIDs) and their signal quality to a file.
nmcli -f ssid,signal device wifi list | tr -s " " > ~/wifilist.dump

highestSignal=0
highestSSID="NULL"

while IFS='' read -r line || [[ -n "$line" ]]; do
	stringarray=($line)
	if [ ${stringarray[0]} != '--' ] && [ ${stringarray[0]} != 'SIGNAL' ]; then
	        if (( ${stringarray[1]} > $highestSignal )); then
                        highestSSID="${stringarray[0]}"
			let highestSignal="${stringarray[1]}"
		fi
	fi
done < ~/wifilist.dump

# Need to handle for spaces in the SSID, as well as other special characters
# Pseudo: Loop through each character of highestSSID and += them into another variable.
#         If the character being read is a special character, i.e. space, #, $, etc. then append a '\' before += into the new variable.
# maybe use SED?
removedSpecialChars="NULL"

echo determined $highestSSID has a signal strength of $highestSignal%
echo attempting to connect...

# Cleanup
rm ~/wifilist.dump

# Attempt to connect to the network with the highest connect with password passed as a parameter
nmcli device wifi connect $highestSSID
