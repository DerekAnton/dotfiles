#!/bin/bash
#
# # # # # # # # 
# Wifi Fetch  #
# # # # # # # #  
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

echo determined $highestSSID has a signal strength of $highestSignal%
echo attempting to connect...

# Cleanup
rm ~/wifilist.dump

# Attempt to connect to the network with the highest connect with password passed as a parameter
nmcli device wifi connect $highestSSID password $1

