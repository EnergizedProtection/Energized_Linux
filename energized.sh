#!/bin/bash
# Energized Protection 
# Linux Module
# Copyright (C) 2018 | Energized Protection | Nayem Ador - nayemador.com
# Colors
#
BL='\e[01;90m' > /dev/null 2>&1; # Black
R='\e[01;91m' > /dev/null 2>&1; # Red
G='\e[01;92m' > /dev/null 2>&1; # Green
Y='\e[01;93m' > /dev/null 2>&1; # Yellow
B='\e[01;94m' > /dev/null 2>&1; # Blue
P='\e[01;95m' > /dev/null 2>&1; # Purple
C='\e[01;96m' > /dev/null 2>&1; # Cyan
W='\e[01;97m' > /dev/null 2>&1; # White
LG='\e[01;37m' > /dev/null 2>&1; # Light Gray
N='\e[0m' > /dev/null 2>&1; # Null

# Define Energized Protection directory
USER=`whoami`
DIRECTORY=/home/$USER/EnergizedProtection
# Divider
divider="-------------------------------------------------"
# Create Energized Protection Directory if not available 
if [ ! -d $DIRECTORY ]; then
    mkdir -p $DIRECTORY;
fi
# Versioning and some URL's
version=$Y'4.0'$N > /dev/null 2>&1
released=$G'Aug 30, 2018'$N > /dev/null 2>&1
saythanks='https://saythanks.io/to/AdroitAdorKhan' > /dev/null 2>&1

# Start echo -es
clear
echo -e ''
echo -e $Y"      _____  _________  _____________  _______  "$N
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N
echo -e ''
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N 
sleep 0.1
echo -e "$divider" 
echo -e "     Version: $version | Updated: $released"
sleep 0.1
echo -e "$divider"
sleep 0.1
echo -e ""
sleep 0.1
echo -e $Y'             nayemador.com/energized'$N
echo -e ""
sleep 0.1
echo -e "             ©Team Boltz | Energized"
echo -e ''
sleep 0.5
echo -e -n -e $Y'                        •'$N; sleep 0.2; 
echo -e -n -e $Y'•'$N; sleep 0.3;
echo -e -n -e $Y'•'$N; sleep 0.2;
sleep 2
clear
# Disclaimer
echo -e "$divider"
echo -e $R'DISCLAIMER'$N
echo -e "$divider"
echo -e $R"THIS IS SIMPLY A MODULE TO CHANGE YOUR MACHINE's"$N
echo -e $R"HOSTS FILE. IF YOU DON'T KNOW WHAT YOU ARE DOING,"$N
echo -e $R"THEN PLEASE DON'T PROCEED. I WON'T BE RESPONSIBLE"$N
echo -e $R"FOR THE MESS YOU CREATE."$N
echo -e ''
echo -e $Y"ENERGIZED BASIC/PORN/ULTIMATE/UNIFIED PACKS ARE"$N
echo -e $Y"BIGGER IN SIZE. USE THEM, IF YOUR MACHINE CAN"$N
echo -e $Y"HANDLE THE LOAD."$N
echo -e ''
echo -e $P"WE MAY ASK YOU FOR YOUR $N'sudo'$P PASSWORD"$N
echo -e $P"TO ACCESS AND MODIFY THE $N'hosts'$P FILE"$N
echo -e $P"DON'T WORRY !! , WE WON'T TOUCH ANYTHING ELSE !"$N
echo -e "$divider"
sleep 10
# Check Energized Directory
clear
echo -e "[+] Checking Energized Directory."; sleep 0.1; clear
echo -e "[+] Checking Energized Directory.."; sleep 0.2; clear
echo -e "[+] Checking Energized Directory..."; sleep 0.1; clear
# Create Energized Protection Cache Directory if not available 
if [ ! -d $DIRECTORY/cache ]; then
    mkdir -p $DIRECTORY/cache;
    echo -e "\n[+] Setting up working cache directory.\n";
fi
# Check if the Whitelist is there, else creates
if [ ! -f $DIRECTORY/blacklist ]; then
   clear
   echo -e "\n[+] Creating Blacklist.\n";
   touch $DIRECTORY/blacklist
   sleep 0.2
fi
# Check if the Blacklist is there, else creates 
if [ ! -f $DIRECTORY/whitelist ]; then
   clear
   echo -e "[+] Creating Whitelist.";
   touch $DIRECTORY/whitelist
   sleep 0.2
fi
# Check if the temporary is there, else creates 
if [ ! -f $DIRECTORY/cache/energizedtemp ]; then
   clear
   echo -e "[+] Creating temporary cache...";
   touch $DIRECTORY/cache/energizedtemp
   sleep 0.2
fi
# Check if the porn temp is there, else creates 
if [ ! -f $DIRECTORY/cache/energizedporntemp ]; then
   clear
   echo -e "[+] Creating Temp...";
   touch $DIRECTORY/cache/energizedporntemp
   sleep 0.2
fi
# Check if the social temp is there, else creates 
if [ ! -f $DIRECTORY/cache/energizedsocialtemp ]; then
   clear
   echo -e "[+] Creating Temp...";
   touch $DIRECTORY/cache/energizedsocialtemp
   sleep 0.2
fi
while true
do
# Few Variables
HOST=/etc/hosts
TREADME=$DIRECTORY/readme
DREADME=$DIRECTORY/deltaReadme
FILTER=$DIRECTORY/filter
DFILTER=$DIRECTORY/deltaFilter
WHITELIST=$DIRECTORY/whitelist
BLACKLIST=$DIRECTORY/blacklist
TEMP=$DIRECTORY/cache/energizedtemp
PTEMP=$DIRECTORY/cache/energizedporntemp
STEMP=$DIRECTORY/cache/energizedsocialtemp
COUNT=1
# Check if Delta Update is available
wget --no-check-certificate -q -O $DREADME https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/blacklist
grep -q "#" $DREADME
if [ -f $DFILTER ]; then
	DCURRENT=$(grep "#" $DREADME)
	DUPDATED=$(sed '1q;d' $DFILTER)
	if [ "$DUPDATED" != "$DCURRENT" ]; then
		deltapatch=$G'[dp] Delta Patch'$N
	else
	    deltapatch=$W''$N
	fi
else
	touch $DFILTER
	
fi
clear
# Other Variables
update="\e[1;36m`date -r $HOST`\e[0m"
size="\e[1;35m`ls -lah $HOST | awk '{print $5}'`\e[0m"
# Check if System's Adblocker is enabled or not
   [ -f $HOST ];
if grep -q ads $HOST; then
	adblocker="\e[1;32m[✓]\e[0m"
else
	adblocker="\e[1;31m[×]\e[0m"
fi
# Check if Energized is applied or not
	[ -f $HOST ];
if grep -q ads.nayemador.com $HOST; then
	eonoff="\e[1;32m[✓]\e[0m"
else
	eonoff="\e[1;31m[×]\e[0m"
fi
# If Energized is enabled, which pack it is
	[ -f /system/etc/hosts ];
if grep -q "E84S1C-P" $HOST; then
	echeck="\e[1;32mBasic Protection\e[0m"
	autopack="basic"
elif grep -q "E5P4RK-P" $HOST; then
	echeck="\e[1;32mSpark Protection\e[0m"
	autopack="spark"
elif grep -q "E8LU-P" $HOST; then
	echeck="\e[1;32mBlu Protection\e[0m"
	autopack="blu"
elif grep -q "E8LUG0-P" $HOST; then
	echeck="\e[1;32mBlu Go Protection\e[0m"
	autopack="bluGo"
elif grep -q "EP0R9-P" $HOST; then
	echeck="\e[1;32mPorn Protection\e[0m"
	autopack="porn"
elif grep -q "EUL71M473-P" $HOST; then
	echeck="\e[1;32mUltimate Protection\e[0m"
	autopack="ultimate"
elif grep -q "EU91F13D-P" $HOST; then
	echeck="\e[1;32mUnified Protection\e[0m"
	autopack="unified"
else
	echeck="\e[1;31mNo Pack Detected!\e[0m"
	autopack="null"
fi
# Check if Hosts Update is available
wget --no-check-certificate -q -O $TREADME https://raw.githubusercontent.com/EnergizedProtection/block/master/VERSION.md
grep -q "Version Code" $TREADME
if [ -f $FILTER ]; then
	CURRENT=$(grep "Version Code" $TREADME)
	LAST_UPDATED=$(sed '1q;d' $FILTER)
	if [ "$LAST_UPDATED" != "$CURRENT" ]; then
		eupdate=$G'[✓] UPDATE AVAILABLE!'$N
	else
		eupdate=$C'[×] NO NEW UPDATE!'$N
	fi
else
	touch $FILTER
	eupdate="[+] Apply the hosts first!"
fi
clear
	INPUT=$(eval "echo -e \$$COUNT")
	if [ ! "$INPUT" ]; then
		if [ "$1" ]; then
			rm -f $TREADME
			exit 0
		fi
# Starts Screen echo -es
echo -e ''
echo -e ''
echo -e $Y"      _____  _________  _____________  _______  "$N; sleep 0.1;
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N; sleep 0.1;
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N; sleep 0.1;
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N; sleep 0.1;
echo -e '' 
sleep 0.1
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N 
echo -e ''
sleep 0.1
echo -e $W'       Energized All-In-One Linux Module'$N
echo -e "      Version: $version | Updated: $released\n"
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'[+] HOSTS INFO:'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W"$eonoff ENERGIZED        [+] PACK: $echeck"$N
sleep 0.1
echo -e $W"$adblocker ADBLOCKING       [+] SIZE: $size"$N
sleep 0.1
echo -e $W"[+] LAST UPDATED: $update"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
# Options echo -e
		echo -e $Y"[+] ENERGIZED PACKs:      $eupdate"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"[1] Spark Protection      [2] Basic Protection"$N
		sleep 0.1
		echo -e $W'[3] Blu Protection        [4] Blu Go Protection'$N
		sleep 0.1
		echo -e $W'[5] Porn Protection       [6] Ultimate Protection'$N
		sleep 0.1
		echo -e $W"[7] Unified Protection   "$N    $G"$deltapatch"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] EXTENSIONS:'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W'[p] Porn Lite Blocking    [s] Social Blocking'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] OPTIONS:'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W'[c] Clear Hosts           [ip] Redirection IP'$N
		sleep 0.1
		echo -e $W'[w] Apply Whitelist       [iw] Instant Whitelist'$N
		sleep 0.1
		echo -e $W'[b] Apply Blacklist       [ib] Instant Blacklist'$N
		sleep 0.1
		echo -e $W'[u] Current-O-Update      [in] Instructions'$N
		sleep 0.1
		echo -e $W'[i] Web & Info'$N
		sleep 0.1
		echo -e $R'[q] Quit.'$N
		sleep 0.1
		echo -e $W''$N
		sleep 0.1
		echo -e -n "\033[33;1m[+] Your Input\033[0m - "
		read -r INPUT
		if [ "$INPUT" != "m" ]; then
			INPUT="$(echo -e "$INPUT" | sed 's/m//g')"
			clear
		fi
		DIR=""
	fi
	case "$INPUT" in
		1) DIR="master/spark/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Spark Protection'$N
		;;
		2) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"Hold on a sec!"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"Energized Basic is more than 12MB in size, and"$N
		sleep 0.1
		echo -e $W"may slow down your browsing experience (If your"$N
		sleep 0.1
		echo -e $W"device can't handle the load.)"$N
		echo -e ''
		sleep 0.1
		echo -e -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Basic..."
		  DIR="master/basic/formats/hosts"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Basic Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		3) DIR="master/blu/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Protection'$N
		echo -e $Y"$divider"$N
		;;
		4) DIR="master/bluGo/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Go Protection'$N
		echo -e $Y"$divider"$N
		;;
		5) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"Hold on a sec!"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"Energized Porn is more than 15MB in size, and"$N
		sleep 0.1
		echo -e $W"may slow down your browsing experience (If your"$N
		sleep 0.1
		echo -e $W"device can't handle the load.)"$N
		echo -e ''
		sleep 0.1
		echo -e -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Porn..."
		  DIR="master/porn/formats/hosts"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Porn Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		6) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"Hold on a sec!"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"Energized Ultimate is more than 17MB in size, and"$N
		sleep 0.1
		echo -e $W"may slow down your browsing experience (If your"$N
		sleep 0.1
		echo -e $W"device can't handle the load.)"$N
		echo -e ''
		sleep 0.1
		echo -e -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Ultimate..."
		  DIR="master/ultimate/formats/hosts"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Ultimate Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		7) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"Hold on a sec!"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"Energized Unified is more than 30MB in size, and"$N
		sleep 0.1
		echo -e $W"may slow down your browsing experience (If your"$N
		sleep 0.1
		echo -e $W"device can't handle the load.)"$N
		echo -e ''
		sleep 0.1
		echo -e -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Unified..."
		  DIR="master/unified/formats/hosts"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Unified Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		u) clear
		if [ "$autopack" == "null" ]; then
		    echo -e $R"[-] No Energized Pack Applied Yet!"$N
		sleep 3
		else
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"[+] Applying $echeck"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		echo -e ''
		sudo wget --no-check-certificate -O $HOST https://raw.githubusercontent.com/EnergizedProtection/block/master/$autopack/formats/hosts
		echo -e "\n\033[32;5;7m[+] Done Applying!\033[0m"
		sleep 1
		echo -e $Y"$divider"$N
		grep "Version Code" $TREADME > $FILTER
		sleep 0.3
		# Whitelisting
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] WHITELISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		# Begins
		if [ ! -f $WHITELIST ]; then
				echo -e ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y$DIRECTORY$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist'$N
					sleep 0.3
					grep -Fvxf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 0.5
					grep -Fvf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 0.5
					grep -vxf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 0.1
					echo -e $G'[+] Done'$N
					sleep 1
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		sleep 0.1
		echo -e $Y"$divider"$N
		# Blacklisting
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] BLACKLISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		# Begins
		if [ ! -f $BLACKLIST ]; then
				echo -e ""
				echo -e $R'[-] No Blacklist detected!'$N
				echo -e $W'[+] Copy your blacklist to'$N $Y$DIRECTORY$N
			else
				if [ -f "$HOST" ]; then
					if [ -s $BLACKLIST ]; then
						echo -e $G'[+] Blacklist Found!'$N
						echo -e $W'[+] Applying Blacklist...'$N
						sleep 2
						NEWFILTERS="$(cat $BLACKLIST)"
						printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
						do
						  if [ ! "$(grep -Fx "$linenew" $HOST)" ]; then
							sudo sed -i -e "\$a0.0.0.0 $linenew" $HOST
						  fi
						done
						echo -e $G'[+] Done'$N
						sleep 1
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo -e "[+] Returning..."
						sleep 2
					fi
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		fi
		;;
		w) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] WHITELISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e ""
		# Begins
		if [ ! -f $WHITELIST ]; then
				echo -e ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'$DIRECTORY'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist'$N
					sleep 0.3
					grep -Fvxf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 0.5
					grep -Fvf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 0.5
					grep -vxf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					sleep 1
					echo -e $G'[+] Done'$N
					echo -e "[+] Returning..."
					sleep 3 
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
		d)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] WHITELISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e ""
		# Begins
		if [ ! -f $WHITELIST ]; then
				echo -e ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'$DIRECTORY'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist (DOMAIN)'$N
					sleep 2
					grep -Fvf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					echo -e $G'[+] Done'$N
					echo -e "[+] Returning..."
					sleep 3 
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
		r) clear
		echo -e "$divider"
		echo -e "\033[1;33m[+] WHITELISTING\033[0m"
		sleep 0.1
		echo -e "$divider"
		sleep 0.1
		echo -e ""
		# Begins
		if [ ! -f $WHITELIST ]; then
				echo -e ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'$DIRECTORY'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist (REGEX)'$N
					sleep 2
					grep -vxf $WHITELIST $HOST > $TEMP
					sudo mv $TEMP $HOST
					echo -e $G'[+] Done'$N
					echo -e "[+] Returning..."
					sleep 3 
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
		b) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] BLACKLISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e ""
		# Begins
		if [ ! -f $BLACKLIST ]; then
				echo -e ""
				echo -e $R'[-] No Blacklist detected!'$N
				echo -e $W'[+] Copy your blacklist to'$N $Y'$DIRECTORY'$N
			else
				if [ -f "$HOST" ]; then
					if [ -s $BLACKLIST ]; then
						echo -e $G'[+] Blacklist Found!'$N
						echo -e $W'[+] Applying Blacklist...'$N
						sleep 2
						NEWFILTERS="$(cat $BLACKLIST)"
						printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
						do
						  if [ ! "$(grep -Fx "$linenew" $HOST)" ]; then
							sudo sed -i -e "\$a0.0.0.0 $linenew" $HOST
						  fi
						done
						echo -e $G'[+] Done'$N
						echo -e "[+] Returning..."
						sleep 1
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo -e "[+] Returning..."
						sleep 2
					fi
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
			;;
		q) break
		clear
		reset
		;;
		i) xdg-open https://nayemador.com/energized
		;;
		in) xdg-open https://nayemador.com/energized/instructions
		;;
		thanks|thx|thnx|thax|thank|thanku|thankyou) xdg-open $saythanks
		;;
		c) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] CLEAN HOSTS'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Clean your current hosts to defualt."
		echo -e $Y"$divider"$N
		echo -e ""
		sudo rm -rf $HOST
		rm -f $FILTER
		rm -f $DFILTER
		touch $FILTER
		touch $DFILTER
		echo -e "[+] Clearing Hosts File..."
		sleep 0.3
		sudo cat >> $HOST <<EOF
127.0.0.1 localhost
EOF
        echo -e "[+] Done Clearing Hosts!"
        echo -e "[+] Returning..."
        sleep 2
        ;;
        p)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] PORN HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Add Porn Lite Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		wget --no-check-certificate -O $PTEMP https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/formats/ext-porn-hosts
			echo -e "[+] Applying Porn Hosts to current hosts."
            sudo mv $HOST $TEMP
			sudo cat $TEMP $PTEMP > $HOST
			sudo awk '!a[$0]++' $HOST > $PTEMP && sudo mv -f $PTEMP $HOST
			rm -f $TEMP $PTEMP
			echo -e $G'[+] Done!'$N
			echo -e "[+] Returning..."
		;;
		s)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] SOCIAL HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Add Social Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		wget --no-check-certificate -O $STEMP https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/formats/ext-social-hosts
			echo -e "[+] Applying Social Hosts to current hosts."
            sudo mv $HOST $TEMP
			cat $TEMP $STEMP > $HOST
			sudo awk '!a[$0]++' $HOST > $STEMP && sudo mv -f $STEMP $HOST
			rm -f $TEMP $STEMP
			echo -e $G'[+] Done!'$N
			echo -e "[+] Returning..."
		;;
		dp)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] DELTA PATCHING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Apply Delta Blacklist and Whitelist."
		echo -e $Y"$divider"$N
		echo -e ""
		wget --no-check-certificate -O $TEMP https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/blacklist
		grep "#" $TEMP > $DFILTER
		sed -i '/^#/d' $TEMP
			echo -e "[+] Applying Delta Blacklist to current hosts."
			NEWFILTERS="$(cat $TEMP)"
			printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
			do
			  if [ ! "$(grep -Fx "$linenew" $HOST)" ]; then
			   sudo sed -i -e "\$a0.0.0.0 $linenew" $HOST
			  fi
			done
			rm -f $TEMP
			wget --no-check-certificate -O $STEMP https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/whitelist
			echo -e "[+] Applying Delta Whitelist to current hosts."
			grep -Fvf $STEMP $HOST > $TEMP
			sudo mv $TEMP $HOST
			rm -f $TEMP $STEMP
			echo -e $G'[+] Done!'$N
			echo -e "[+] Returning..."
			sleep 2
		;;
		ip) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] CUSTOM REDIRECTION IP'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Add your custom Redirection IP. It must be an IP.\nUsing anything else than IP, may cause issue with\nyour hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e -n -e $W'[+] Enter Redirection IP:'$N $ip
		read ip
		echo -e $W'[+] Your Redirection IP'$N $Y"$ip"$N
		echo -e -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Adding $ip as redirection IP..."
		  sudo mv $HOST $TEMP
		  sudo sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'"${ip}"'/g' $TEMP > $HOST
		  rm -f $TEMP
		  echo -e W$'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		ib) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] INSTANT BLACKLIST'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Instant Blacklist will let you add a domain at a\ntime to add to your hosts as blacklisted.\nNote. To Blacklist more domains, use 'b' method."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e -n -e $W'[+] Enter Domain Name Only:'$N $ib
		read ib
		echo -e $W'[+] Your Domain(s)'$N $Y"$ib"$N
		echo -e -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying $ib as blacklist..."
		  sudo sed -i -e "\$a0.0.0.0 $ib" $HOST
		  echo -e "$ib" >> $BLACKLIST
		  echo -e W$'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  clear
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.3
		  fi
		;;
		iw) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] INSTANT WHITELIST'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Instant whitelist will let you add a domain at a\ntime to add to your hosts as whitelisted.\nNote. To Whitelist more domains, use 'w' method."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e -n -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -e -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying $iw as whitelist..."
		  sudo sed -i "/$iw/d" $HOST
		  echo -e "$iw" >> $WHITELIST
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -e -n -e $W'[+] RETURNING '$N
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  echo -e -n -e $Y'∵'$N; sleep 0.3;
		  echo -e -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.3
		fi
		;;
		*)  echo -e ""
			echo -e $R"Invalid input. Don't use any spaces between letters."$N 
			sleep 2
		;;
	esac
	if [ $DIR ]; then
		echo -e ""
		sudo wget --no-check-certificate -O $HOST https://raw.githubusercontent.com/EnergizedProtection/block/$DIR
		echo -e "\n\033[32;5;7m[+] Done Applying!\033[0m"
		sleep 1
		echo -e $Y"$divider"$N
		grep "Version Code" $TREADME > $FILTER
		sleep 0.5
		echo -e $W'[+] Returning...'$N
		sleep 0.3
		clear
	fi
	DIR=""
	COUNT=$((COUNT+1))
	clear
	reset
done
rm -f $TREADME
echo -e "[+] Done!"
clear 
sleep 0.3
echo -e $Y"$divider"$N
sleep 0.1
echo -e -n -e $Y'                   T'$N; sleep 0.1; 
echo -e -n -e $Y'H'$N; sleep 0.1;
echo -e -n -e $Y'A'$N; sleep 0.1; 
echo -e -n -e $Y'N'$N; sleep 0.1; 
echo -e -n -e $Y'K '$N; sleep 0.1; 
echo -e -n -e $Y'Y'$N; sleep 0.1; 
echo -e -n -e $Y'O'$N; sleep 0.1; 
echo -e -n -e $Y'U'$N; sleep 0.1; 
echo -e -n -e $Y'!'$N; sleep 0.5; 
echo -e -n -e $R'<3\n\n'$N
sleep 0.1
echo -e $Y'             STAY ENERGIZED BUDDY! :)'$N
sleep 0.1
echo -e $Y"$divider"$N
echo -e ""
sleep 3
