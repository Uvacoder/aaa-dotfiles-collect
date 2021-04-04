#!/bin/sh

# to make execurable
# chmod +x updateMacAdress.sh

echo "Hi! lets change our mac address."
echo "Step 1: hold down option key, click wifi logo. Note the mac address"
echo "Step 2: click 'disconnect from network' "
echo "Step 3: note which ethernet adapter lines up with the mac address you just saw"

en0=$( ifconfig en0 | grep ether )
en1=$( ifconfig en1 | grep ether )
en2=$( ifconfig en2 | grep ether )
en3=$( ifconfig en3 | grep ether )
en4=$( ifconfig en4 | grep ether )
en5=$( ifconfig en5 | grep ether )

echo en0 is: $en0
echo en1 is: $en1
echo en2 is: $en2
echo en3 is: $en3
echo en4 is: $en4
echo en5 is: $en5

read -p 'Step 4: Which device lined up would you like to change? (hit return for en0) ' ether_adapter

if [ -z $ether_adapter ]
then
  ether_adapter="en0"
fi

export ether_adapter=$ether_adapter

generate_and_set_new_mac_address() {
  mac=$( openssl rand -hex 6 | sed "s/\(..\)/\1:/g; s/./0/2; s/.$//")
  export mac=$mac
  echo "OK, we will change the mac address associated with: $ether_adapter"

  old_mac=$( ifconfig $ether_adapter | grep ether )

  echo "The old value was: $old_mac"
  sudo ifconfig $ether_adapter ether $mac

  new_mac=$( ifconfig $ether_adapter | grep ether )
  echo "The new value is: $new_mac"
}
echo $new_mac
echo $old_mac

while [ "$new_mac" == "$old_mac" ]
do
  echo "not the same"
  generate_and_set_new_mac_address
done

echo "go ahead and re-connect to the wifi. You should be able to join the network."
