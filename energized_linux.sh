#!/bin/bash
#
# Energized Protection 
# Script for Linux PC's
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
N='\e[0m' > /dev/null 2>&1; # Null

# Divider
divider="-------------------------------------------------"

# Create Energized Protection Directory if not available
if [ ! -d /EnergizedProtection ]; then
    mkdir -p /EnergizedProtection;
fi

# Versioning
version=`echo -e $Y"3.5"$N`
released=`echo -e $G"Jul 22, 2018"$N`
saythanks='https://saythanks.io/to/AdroitAdorKhan' > /dev/null 2>&1

# Start Echos
clear
echo ''
echo -e $Y"      _____  _________  _____________  _______  "$N
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N
echo ''
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N 
sleep 0.1
echo "$divider" 
echo "     Version: $version | Updated: $released"
sleep 0.1
echo "$divider"
sleep 0.1
echo ""
sleep 0.1
echo -e $Y'             nayemador.com/energized'$N
echo ""
sleep 0.1
echo "             ©Team Boltz | Energized"
echo ''
sleep 0.5
echo -n -e $Y'                        ⚡'$N; sleep 0.2; 
echo -n -e $Y'⚡'$N; sleep 0.3;
echo -n -e $Y'⚡'$N; sleep 0.2;
sleep 2
clear

# Disclaimer
echo -e "$divider"
echo -e $R'                 DISCLAIMER'$N
echo -e "$divider"
echo -e $R"THIS IS SIMPLY A SCRIPT TO CHANGE YOUR MACHINE'S"$N
echo -e $R"HOSTS FILE. IF YOU DON'T KNOW WHAT YOU ARE DOING,"$N
echo -e $R"THEN PLEASE DON'T PROCEED. I WON'T BE RESPONSIBLE"$N
echo -e $R"           FOR THE MESS YOU CREATE."$N
echo -e "$divider"
sleep 5

# Check System Hosts File
clear
echo "[+] Checking System Hosts File"; sleep 0.2; clear
echo "[+] Checking System Hosts File."; sleep 0.2; clear
echo "[+] Checking System Hosts File.."; sleep 0.2; clear
echo "[+] Checking System Hosts File..."; sleep 0.5; clear
echo "[+] Checking System Hosts File.."; sleep 0.2; clear
echo "[+] Checking System Hosts File."; sleep 0.2; clear
echo "[+] Checking System Hosts File"; sleep 0.2; clear

# Check if Other Adblocker is installed in system
if grep -q https://nayemador.com/energized /etc/hosts; then
    clear
    echo -e "\n\033[33;5;7m[-] Energized Ad-Blocking Hosts is detected!\033[0m"
    sleep 0.3
    echo ''
    echo -e "\033[36;5;7m[+] Good !! Stay Energized, Buddy!!\033[0m"
    sleep 4
elif grep -q 0.0.0.0 /etc/hosts; then
    clear
    echo -e "\n\033[33;5;7m[-] Other Ad-Blocking hosts is detected!\033[0m"
    sleep 0.3
    echo ''
    echo -e "\033[36;5;7m[+] It will automatically be disabled when you install any Energized Pack\033[0m"
    sleep 4
else
    clear
    echo -e "\n\033[33;5;7m[-] No Ad-Blocker Detected!\033[0m"
    sleep 0.3
    echo ''
    echo -e "\033[36;5;7m[+] You have come to the right place then, Install Energized Protection NOW!!\033[0m"
    sleep 4
fi

# Check Energized Directory
clear
echo "[+] Checking Energized Directory."; sleep 0.2; clear
echo "[+] Checking Energized Directory.."; sleep 0.2; clear
echo "[+] Checking Energized Directory..."; sleep 0.4; clear

# Check if the Whitelist is there, else creates
if [ ! -f /EnergizedProtection/blacklist ]; then
   clear
   echo "[+] Creating Blacklist.";
   touch /EnergizedProtection/blacklist
   sleep 1
fi

# Check if the Blacklist is there, else creates 
if [ ! -f /EnergizedProtection/whitelist ]; then
   clear
   echo "[+] Creating Whitelist.";
   touch /EnergizedProtection/whitelist
   sleep 1
fi

# A few variables
DIRECTORY="/EnergizedProtection"
HOST=/etc/hosts
UPDATE="\e[1;36m`date -r /etc/hosts`\e[0m"
SIZE="\e[1;35m`ls -lah /etc/hosts | awk '{print $5}'`\e[0m"
TREADME=/EnergizedProtection/readme
FILTER=/EnergizedProtection/filter
WHITELIST=/EnergizedProtection/whitelist
BLACKLIST=/EnergizedProtection/blacklist
TEMP=/EnergizedProtection/cache/energizedtemp
PTEMP=/EnergizedProtection/cache/energizedporntemp
STEMP=/EnergizedProtection/cache/energizedsocialtemp
COUNT=1

# Check if Root was granted or not
id="$(id)"; id="${id#*=}"; id="${id%%\(*}"; id="${id%% *}"
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
    root="\e[1;31m[×]\e[0m";
else
    root="\e[1;32m[✓]\e[0m";
fi;

# Check if System's Adblocker is enabled or not
   [ -f /etc/hosts ];
if grep -q 0.0.0.0 /etc/hosts; then
	adblocker="\e[1;32m[✓]\e[0m"
else
	adblocker="\e[1;31m[×]\e[0m"
fi

# Check if Energized is applied or not
	[ -f /etc/hosts ];
if grep -q nayemador.com /etc/hosts; then
	eonoff="\e[1;32m[✓]\e[0m"
else
	eonoff="\e[1;31m[×]\e[0m"
fi

# If Energized is enabled, which pack it is
	[ -f /etc/hosts ];
if grep -q "E84S1C-P" /etc/hosts; then
	echeck="\e[1;32mBasic Protection\e[0m"	
elif grep -q "E8LU-P" /etc/hosts; then
	echeck="\e[1;32mBlu Protection\e[0m"
elif grep -q "E8LUG0-P" /etc/hosts; then
	echeck="\e[1;32mBlu Go Protection\e[0m"
elif grep -q "EP0R9-P" /etc/hosts; then
	echeck="\e[1;32mPorn Protection\e[0m"
elif grep -q "EUL71M473-P" /etc/hosts; then
	echeck="\e[1;32mUltimate Protection\e[0m"
elif grep -q "EU91F13D-P" /etc/hosts; then
	echeck="\e[1;32mUnified Protection\e[0m"
else
	echeck="\e[1;31mNo Pack Detected!\e[0m"
fi

# Check if Hosts Update is available
echo "[+] Checking Hosts Update"; sleep 0.2; clear
echo "[+] Checking Hosts Update."; sleep 0.2; clear
echo "[+] Checking Hosts Update.."; sleep 0.3; clear
echo "[+] Checking Hosts Update.."; sleep 0.5; clear
echo "[+] Checking Hosts Update.."; sleep 0.3; clear
echo "[+] Checking Hosts Update."; sleep 0.2; clear
echo "[+] Checking Hosts Update"; sleep 0.2; clear
echo "[+] NOTE: Data connection is required to download the hosts."; sleep 2; clear
wget -q -O $TREADME https://raw.githubusercontent.com/EnergizedProtection/block/master/VERSION.md
grep "Version Code" $TREADME
if [ -f $FILTER ]; then
	CURRENT=$(grep "Version Code" $TREADME)
	LAST_UPDATED=$(sed '1q;d' $FILTER)
	if [ "$LAST_UPDATED" != "$CURRENT" ]; then
	clear
	    echo -e "\033[33;1m-------------------------------\033[0m"
	    echo ""
	    sleep 0.1
		echo -e "\033[33;5;7m[+] New Hosts Update available!\033[0m"
		sleep 0.1
		echo ""
		echo -e "\033[33;1m-------------------------------\033[0m"
		
		sleep 5
	else
	clear
		echo -e "\033[33;1m----------------------------\033[0m"
		echo ""
		sleep 0.1
		echo "[+] No new update available."
		sleep 0.1
		echo ""
		echo -e "\033[33;1m----------------------------\033[0m"
		sleep 2
		clear
	fi
else
	touch $FILTER
	echo "[+] No hosts file from this module yet applied!"
fi
while true
do
clear
	INPUT=$(eval "echo \$$COUNT")
	if [ ! "$INPUT" ]; then
		if [ "$1" ]; then
			rm -f $TREADME
			exit 0
		fi

# Starts Screen Echos
echo ''
echo ''
echo -e $Y"      _____  _________  _____________  _______  "$N; sleep 0.1;
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N; sleep 0.1;
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N; sleep 0.1;
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N; sleep 0.1;
echo '' 
sleep 0.1
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N 
echo ''
sleep 0.1
echo -e $W'       Energized All-In-One Linux Script'$N
echo "       Version: $version | Updated: $released"
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'[+] ROOT & HOSTS INFO:'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W"$root ROOT             [+] DIRECTORY: $DIRECTORY"$N
sleep 0.1
echo -e $W"$eonoff ENERGIZED        [+] PACK: $echeck"$N
sleep 0.1
echo -e $W"$adblocker ADBLOCKING       [+] SIZE: $SIZE"$N
sleep 0.1
echo -e $W"[+] LAST UPDATED: $UPDATE"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1

# Options Echo
		echo -e $Y'[+] SELECT AN ENERGIZED PACK BELOW:'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W'[1] Basic Protection      [4] Porn Protection'$N
		sleep 0.1
		echo -e $W'[2] Blu Protection        [5] Ultimate Protection'$N
		sleep 0.1
		echo -e $W'[3] Blu Go Protection     [6] Unified Protection'$N
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
		echo -e $W'[w] Apply Whitelist       [we] Whitelist Editor'$N
                sleep 0.1
                echo -e $W'[iw] Instant Whitelist    [ib] Instant Blacklist'$N
		sleep 0.1
		echo -e $W'[b] Apply Blacklist       [be] Blacklist Editor'$N
		sleep 0.1
                echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] INFORMATION AND MORE:'$N
		sleep 0.1
		echo -e $Y"$divider"$N
                sleep 0.1
                echo -e $W'[i] Know more about Energized-Hosts (Opens in Browser)'$N
		sleep 0.1
		echo -e $W'[h] Energized-Hosts Homepage (Opens in Browser)'$N
		sleep 0.1
                echo -e $W'[t] Protection Test (Opens in Browser)'$N
                echo ""
		echo -e $R'[q] Quit.'$N
		sleep 0.1
		echo ""
		sleep 0.1
		echo -e "\033[33;1m[+] Your Input (eg. Type '1' for Basic Protection)\033[0m - "
		read -r INPUT
		if [ "$INPUT" != "m" ]; then
			INPUT="$(echo "$INPUT" | sed 's/m//g')"
			clear
		fi
		DIR=""
	fi
	case "$INPUT" in
		1) DIR="master/basic/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Basic Protection'$N
		;;
		2) DIR="master/blu/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Protection'$N
		echo -e $Y"$divider"$N
		;;
		3) DIR="master/bluGo/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Go Protection'$N
		echo -e $Y"$divider"$N
		;;
		4) DIR="master/porn/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Porn Protection'$N
		echo -e $Y"$divider"$N
		;;
		5) DIR="master/ultimate/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Ultimate Protection'$N
		echo -e $Y"$divider"$N
		;;
		6) DIR="master/unified/formats/hosts"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Unified Protection'$N
		echo -e $Y"$divider"$N
		;;
		w) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] WHITELISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo ""

		# Begins
		if [ ! -f $WHITELIST ]; then
				echo ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'EnergizedProtection Directory'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist'$N
					sleep 0.3
					grep -Fvxf $WHITELIST $HOST > $TEMP
					mv $TEMP $HOST
					sleep 0.5
					grep -Fvf $WHITELIST $HOST > $TEMP
					mv $TEMP $HOST
					sleep 0.5
					grep -vxf $WHITELIST $HOST > $TEMP
					mv $TEMP $HOST
					sleep 1
					echo -e $G'[+] Done'$N
					echo "[+] Returning..."
					sleep 3 
				else
					echo ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
                we) nano $WHITELIST
		;;
                be) nano $BLACKLIST
		;;
		d)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] WHITELISTING'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo ""

		# Begins
		if [ ! -f $WHITELIST ]; then
				echo ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'EnergizedProtection Directory'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist (DOMAIN)'$N
					sleep 2
					grep -Fvf $WHITELIST $HOST > $TEMP
					mv $TEMP $HOST
					echo -e $G'[+] Done'$N
					echo "[+] Returning..."
					sleep 3 
				else
					echo ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
		r) clear
		echo "$divider"
		echo "\033[1;33m[+] WHITELISTING\033[0m"
		sleep 0.1
		echo "$divider"
		sleep 0.1
		echo ""

		# Begins
		if [ ! -f $WHITELIST ]; then
				echo ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'EnergizedProtection Directory'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist (REGEX)'$N
					sleep 2
					grep -vxf $WHITELIST $HOST > $TEMP
					mv $TEMP $HOST
					echo -e $G'[+] Done'$N
					echo "[+] Returning..."
					sleep 3 
				else
					echo ""
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
		echo ""

		# Begins
		if [ ! -f $BLACKLIST ]; then
				echo ""
				echo -e $R'[-] No Blacklist detected!'$N
				echo -e $W'[+] Copy your blacklist to'$N $Y'EnergizedProtection Directory'$N
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
							sed -i -e "\$a0.0.0.0 $linenew" $HOST
						  fi
						done
						echo -e $G'[+] Done'$N
						echo "[+] Returning..."
						sleep 1
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo "[+] Returning..."
						sleep 2
					fi
				else
					echo ""
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
		h) if [ "$INPUT" -eq h ]; then
		     xdg-open https://nayemador.com/energized/
		   fi
		;;
                i) if [ "$INPUT" -eq i ]; then
		     xdg-open https://github.com/EnergizedProtection/block/blob/master/README.md
		   fi
		;;
                t) if [ "$INPUT" -eq t ]; then
		     xdg-open https://nayemador.com/energized/secure/
		   fi
		;;
		thanks|thx|thnx|thax|thank|thanku|thankyou) xdg-open $saythanks
		;;
		c) clear
                hostname="`hostname`"
		echo -e $Y"$divider"$N
		echo -e $Y'[+] CLEAN HOSTS'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Clean your current hosts to default."
		echo -e $Y"$divider"$N
		echo ""
		rm -rf /etc/hosts
		echo "[+] Clearing Hosts File..."
		sleep 0.3
		cat >> /etc/hosts <<EOF
# WELCOME TO THE HOSTS FILE !!
# A plain text file that maps hostnames to IP addresses.
# Used for attacks or pranks, or to simply and freely control access to websites and network traffic.

127.0.0.1 localhost
127.0.0.1 $hostname

EOF
        echo "[+] Done Clearing Hosts!"
        echo "[+] Returning..."
        sleep 2
        ;;
        p)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] PORN HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Add Porn Lite Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo ""
		wget -O $PTEMP https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/formats/ext-porn-hosts.txt
			echo "[+] Applying Porn Hosts to current hosts."
            mv $HOST $TEMP
			cat $TEMP $PTEMP > $HOST
			awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
			rm -f $TEMP $PTEMP
			echo -e $G'[+] Done!'$N
			echo "[+] Returning..."
		;;
		s)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] SOCIAL HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Add Social Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo ""
		wget -O $STEMP https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/formats/ext-social-hosts.txt
			echo "[+] Applying Social Hosts to current hosts."
            mv $HOST $TEMP
			cat $TEMP $STEMP > $HOST
			awk '!a[$0]++' $HOST > $STEMP && mv -f $STEMP $HOST
			rm -f $TEMP $STEMP
			echo -e $G'[+] Done!'$N
			echo "[+] Returning..."
		;;
		ip) clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] CUSTOM REDIRECTION IP'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Add your custom Redirection IP. It must be an IP.\nUsing anything else than IP, may cause issue with\nyour hosts."
		echo -e $Y"$divider"$N
		echo ""
		echo -n -e $W'[+] Enter Redirection IP:'$N $ip
		read ip
		echo -e $W'[+] Your Redirection IP'$N $Y"$ip"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo "[+] Adding $ip as redirection IP..."
		  mv $HOST $TEMP
		  sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'"${ip}"'/g' $TEMP > $HOST
		  rm -f $TEMP
		  echo -e W$'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'∴'$N; sleep 0.2;
		  echo -n -e $Y'∵'$N; sleep 0.3;
		  echo -n -e $Y'∴'$N; sleep 0.2;
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $ib
		read ib
		echo -e $W'[+] Your Domain(s)'$N $Y"$ib"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo "[+] Applying $ib as blacklist..."
		  sed -i -e "\$a0.0.0.0 $ib" $HOST
		  echo "$ib" >> $BLACKLIST
		  echo -e W$'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  clear
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'∴'$N; sleep 0.2;
		  echo -n -e $Y'∵'$N; sleep 0.3;
		  echo -n -e $Y'∴'$N; sleep 0.2;
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo "[+] Applying $iw as whitelist..."
		  sed -i "/$iw/d" $HOST
		  echo "$iw" >> $WHITELIST
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'∴'$N; sleep 0.2;
		  echo -n -e $Y'∵'$N; sleep 0.3;
		  echo -n -e $Y'∴'$N; sleep 0.2;
		  sleep 0.3
		fi
		;;
		*)  echo ""
			echo -e $R"Invalid input. Don't use any spaces between letters."$N 
			sleep 2
		;;
	        esac
	        if [ $DIR ]; then
		echo ""
		wget -O $HOST https://raw.githubusercontent.com/EnergizedProtection/block/$DIR
		echo "\n\033[32;5;7m[+] Done Applying!\033[0m"
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
echo "[+] Done!"
clear 
sleep 0.3
echo -e $Y"$divider"$N
sleep 0.1
echo -n -e $Y'                   T'$N; sleep 0.1; 
echo -n -e $Y'H'$N; sleep 0.1;
echo -n -e $Y'A'$N; sleep 0.1; 
echo -n -e $Y'N'$N; sleep 0.1; 
echo -n -e $Y'K '$N; sleep 0.1; 
echo -n -e $Y'Y'$N; sleep 0.1; 
echo -n -e $Y'O'$N; sleep 0.1; 
echo -n -e $Y'U'$N; sleep 0.1; 
echo -n -e $Y'!'$N; sleep 0.5; 
echo -n -e $R'<3\n\n'$N
sleep 0.1
echo -e $Y'             STAY ENERGIZED BUDDY! :)'$N
sleep 0.1
echo -e $Y"$divider"$N
echo ""
sleep 3
