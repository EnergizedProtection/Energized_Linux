#!/bin/bash
# ======================================================================
# Module: Energized Protection 
# License: CC BY-NC-SA 4.0; https://nenergized.pro/license
# Copyright (C) 2018 Energized Protection ϟ All Rights Reserved.
# ====================================================================== 
# Script Begins -
# ========================================
# Colors
# ----------------------------------------
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
# ----------------------------------------

# Define Energized Protection Directory
# ----------------------------------------
DIRECTORY=./EnergizedProtection

rm -f $DIRECTORY/filter
rm -f $DIRECTORY/deltaFilter
rm -f $DIRECTORY/deltaReadme

# Divider
# ----------------------------------------
divider="-------------------------------------------------"
hostname=`hostname`
# Create Energized Protection Directory
# ----------------------------------------
if [ ! -d $DIRECTORY ]; then
    mkdir -p $DIRECTORY;
fi

# Versioning & Date
# ----------------------------------------
version=$Y'milo'$N > /dev/null 2>&1
released=$G'Sep 27, 2018'$N > /dev/null 2>&1
saythanks='https://saythanks.io/to/AdroitAdorKhan' > /dev/null 2>&1
date=$(date "+%d.%m.%Y %H:%M:%S")

# Start echo -es
# ----------------------------------------
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
echo -e "      Version: $version | Updated: $released"
sleep 0.1
echo -e "$divider"
sleep 0.1
echo -e ""
sleep 0.1
echo -e $Y'                  energized.pro'$N
echo -e ""
sleep 0.1
echo -e "                 CC BY-NC-SA 4.0"
echo -e ''
sleep 0.5
echo -n -e $Y'                        •'$N; sleep 0.2; 
echo -n -e $Y'•'$N; sleep 0.3;
echo -n -e $Y'•'$N; sleep 0.2;
sleep 2
clear

# Disclaimer
# ----------------------------------------
echo -e "$divider"
echo -e $R'D I S C L A I M E R'$N
echo -e "$divider"
echo -e $R"THIS IS SIMPLY A MODULE TO CHANGE YOUR MACHINE's"$N
echo -e $R"HOSTS FILE. IF YOU DON'T KNOW WHAT YOU ARE DOING,"$N
echo -e $R"THEN PLEASE DON'T PROCEED. I WON'T BE RESPONSIBLE"$N
echo -e $R"FOR THE MESS YOU CREATE."$N
echo -e ''
echo -e $Y"ENERGIZED BASIC/PORN/ULTIMATE/UNIFIED PACKS ARE"$N
echo -e $Y"BIGGER IN SIZE. USE THEM, IF YOUR DEVICE CAN"$N
echo -e $Y"HANDLE THE LOAD."$N
echo -e "$divider"
sleep 6

# Check Energized Directory
# ----------------------------------------
clear
echo -e "[+] Checking Energized Directory."; sleep 0.1; clear
echo -e "[+] Checking Energized Directory.."; sleep 0.2; clear
echo -e "[+] Checking Energized Directory..."; sleep 0.1; clear

# Create Cache Directory
# ----------------------------------------
if [ ! -d $DIRECTORY/cache ]; then
    mkdir -p $DIRECTORY/cache;
    echo -e "\n[+] Setting up working cache directory.\n";
fi
# Check Whitelist
# ----------------------------------------
if [ ! -f $DIRECTORY/blacklist ]; then
   clear
   echo -e "\n[+] Creating Blacklist.\n";
   touch $DIRECTORY/blacklist
   sleep 0.2
fi
# Check Blacklist
# ----------------------------------------
if [ ! -f $DIRECTORY/whitelist ]; then
   clear
   echo -e "[+] Creating Whitelist.";
   touch $DIRECTORY/whitelist
   sleep 0.2
fi
# Check Redirectlist
# ---------------------------------------- 
if [ ! -f $DIRECTORY/redirectlist ]; then
   clear
   echo -e "[+] Creating Redirectlist.";
   touch $DIRECTORY/redirectlist
   sleep 0.2
fi
# Check Temp
# ---------------------------------------- 
if [ ! -f $DIRECTORY/cache/temp ]; then
   clear
   echo -e "[+] Creating temporary cache...";
   touch $DIRECTORY/cache/temp
   sleep 0.2
fi
# Check Porn Temp
# ----------------------------------------
if [ ! -f $DIRECTORY/cache/ptemp ]; then
   clear
   echo -e "[+] Creating Temp...";
   touch $DIRECTORY/cache/ptemp
   sleep 0.2
fi
# Check Social Temp
# ----------------------------------------
if [ ! -f $DIRECTORY/cache/stemp ]; then
   clear
   echo -e "[+] Creating Temp...";
   touch $DIRECTORY/cache/stemp
   sleep 0.2
fi
# Features & Main Parts
# ----------------------------------------
while true
do
# Aliases, Grep, Wget Variables
# ----------------------------------------
HOST=/etc/hosts
SHOST=$DIRECTORY/hosts.gz
TREADME=$DIRECTORY/cache/readme
BREADME=$DIRECTORY/cache/readme-backup
DREADME=$DIRECTORY/cache/deltaReadme
FILTER=$DIRECTORY/cache/filter
BFILTER=$DIRECTORY/cache/filter-backup
DFILTER=$DIRECTORY/cache/deltaFilter
BDFILTER=$DIRECTORY/cache/deltaFilter-backup
WHITELIST=$DIRECTORY/whitelist
BLACKLIST=$DIRECTORY/blacklist
REDIRECTLIST=$DIRECTORY/redirectlist
TEMP=$DIRECTORY/cache/temp
LTEMP=$DIRECTORY/cache/ltemp
PTEMP=$DIRECTORY/cache/ptemp
STEMP=$DIRECTORY/cache/stemp
HBP=$DIRECTORY/hosts-backup.gz
curip=$(grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\} ads.nayemador.com' $HOST | sed 's/ads.nayemador.com//')
COUNT=1

# TIP 1
# ----------------------------------------
clear
echo -e $G"$divider"$N
echo -e $G"T I P s"$N
echo -e $G"$divider"$N
echo -e ''
echo -e $W'~ NOT SURE WHAT YOU ARE DOING?\n- MAKE BACKUP & THEN RESTORE! ;)'$N
sleep 0.1
echo -e ''
echo -e $W'~ NEED MORE INFO?\n- TYPE TG AND JOIN US! B)'$N
sleep 0.1
echo -e ''
echo -e $W'~ WANT TO DOWNLOAD MAGISK MODULE FOR\nMODERN ANDROIDS? - TYPE MAGISK & HIT ENTER! :D'$N
sleep 1.5

# Check Energized Pack
# ----------------------------------------
	[ -f $HOST ];
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

# Check Delta Update
# ----------------------------------------
if [ "$autopack" != "null" ]; then
clear
echo -e "[+] Checking Delta-Patch"; sleep 0.1; clear
echo -e "[+] Checking Delta-Patch."; sleep 0.15; clear
echo -e "[+] Checking Delta-Patch.."; sleep 0.18; clear
echo -e "[+] Checking Delta-Patch..."; sleep 0.2;

wget --no-check-certificate -q -O $DREADME https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/blacklist
grep -q "#" $DREADME
if [ -f $DFILTER ]; then
	DCURRENT=$(grep "#" $DREADME)
	DUPDATED=$(sed '1q;d' $DFILTER)
	if [ "$DUPDATED" != "$DCURRENT" ]; then
	   if [ "$(grep "ads.nayemador.com" $HOST)" ]; then
	    deltapatch=$G'[dp] DELTA PATCH'$N
	   fi
	else
	    deltapatch=$W''$N
	fi
else
	touch $DFILTER
fi
clear
echo -e "[+] Checking Delta-Patch.."; sleep 0.18; clear
echo -e "[+] Checking Delta-Patch."; sleep 0.15; clear
echo -e "[+] Checking Delta-Patch"; sleep 0.1; clear
fi

# Check Root
# ----------------------------------------
id="$(id)"; id="${id#*=}"; id="${id%%\(*}"; id="${id%% *}"
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
    root="\e[1;31m[×]\e[0m";
else
    root="\e[1;32m[✓]\e[0m";
fi;

# Other Variables
# ----------------------------------------
update="\e[1;36m`date -r $HOST`\e[0m"
size="\e[1;35m`ls -lah $HOST | awk '{print $5}'`\e[0m"

# Check Adblocker
# ----------------------------------------
   [ -f $HOST ];
if grep -q ads $HOST; then
	adblocker="\e[1;32m[✓]\e[0m"
else
	adblocker="\e[1;31m[×]\e[0m"
fi

# Check Energized
# ----------------------------------------
	[ -f $HOST ];
if grep -q ads.nayemador.com $HOST; then
	eonoff="\e[1;32m[✓]\e[0m"
else
	eonoff="\e[1;31m[×]\e[0m"
fi

# TIP 2
# ----------------------------------------
clear
echo -e $Y"$divider"$N
echo -e $Y"T I P s"$N
echo -e $Y"$divider"$N
echo -e ''
eecho -e $W'~ FOR INSTALLING ENERGIZED IN OTHER DEVICES,\n - VISIT OUR WEBSITE !'$N
sleep 0.1
echo -e ''
echo -e $W'~ GOT ANY ISSUE?\n - SUBMIT ISSUE VIA WEB APP.'$N
sleep 0.1
echo -e ''
echo -e $W'~ FEELING THANKFUL? ^_^\n - TYPE THX & YOU ARE MOST WELCOME! <3'$N
sleep 1.6

# Check Hosts Update
# ----------------------------------------
if [ "$autopack" != "null" ]; then
clear
echo -e "[+] Checking Update"; sleep 0.1; clear
echo -e "[+] Checking Update."; sleep 0.15; clear
echo -e "[+] Checking Update.."; sleep 0.18; clear
echo -e "[+] Checking Update..."; sleep 0.2; 

wget --no-check-certificate -q -O $TREADME https://raw.githubusercontent.com/EnergizedProtection/block/master/VERSION.md
grep -q "Version Code" $TREADME
cp $TREADME $BREADME
if [ -f $FILTER ]; then
	CURRENT=$(grep "Version Code" $TREADME)
	LAST_UPDATED=$(sed '1q;d' $FILTER)
	if [ "$LAST_UPDATED" != "$CURRENT" ]; then
	  if [ "$(grep "ads.nayemador.com" $HOST)" ]; then
	    eupdate=$G'[ϟ] UPDATE AVAILABLE!'$N
	  fi
	else
		eupdate=$C'[×] NO NEW UPDATE!'$N
	fi
else
	touch $FILTER
	eupdate="[+] APPLY PACK FIRST!"
fi
clear
echo -e "[+] Checking Update.."; sleep 0.18; clear
echo -e "[+] Checking Update."; sleep 0.15; clear
echo -e "[+] Checking Update"; sleep 0.1; clear
else
	eupdate="[+] APPLY PACK FIRST!"
fi
# Input
# ----------------------------------------
INPUT=$(eval "echo -e \$$COUNT")
	if [ ! "$INPUT" ]; then
		if [ "$1" ]; then
			rm -f $TREADME
			exit 0
		fi
# Starts Screen echo -es
# ----------------------------------------
echo -e ''
echo -e "                                           v.$version"
echo -e $Y"      _____  _________  _____________  _______  "$N; sleep 0.1;
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N; sleep 0.1;
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N; sleep 0.1;
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N; sleep 0.1;
echo -e '' 
sleep 0.1
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N 
echo -e ''
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'ϟ B A S I C  I N F O -'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $root$W" ROOT             "$N$W"[+] VERSION: $bboxname"$N
sleep 0.1
echo -e $eonoff$W" ENERGIZED        "$N$W"[+] PACK: $echeck"$N
sleep 0.1
echo -e $adblocker$W" ADBLOCKING       "$N$W"[+] SIZE: $size"$N
sleep 0.1
echo -e $W"[+] LAST UPDATED: $update"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
# Packs
# ----------------------------------------
echo -e $Y"ϟ P A C K s -             $eupdate"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W"[1] Spark         [3] Blu          [5] Ultimate"$N
sleep 0.1
echo -e $W"[2] Blu Go        [4] Basic        [6] Unified"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y"ϟ E X T E N S I O N s -   "$N$deltapatch
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W"[p] Porn  [pl] Porn Lite  [s] Social  [x] Xtreme"$N
sleep 0.1
# Options
# ----------------------------------------
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'ϟ O P T I O N s -'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W'[c] Clear Hosts           [ip] Redirection IP'$N
sleep 0.1
echo -e $W'[w] Apply Whitelist       [iw] Instant Whitelist'$N
sleep 0.1
echo -e $W'[b] Apply Blacklist       [ib] Instant Blacklist'$N
sleep 0.1
echo -e $W'[r] Redirect Domains      [ir] Instant Redirect'$N
sleep 0.1
# Misc
# ----------------------------------------
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'ϟ M I S C -'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W'[bp] Backup Hosts         [rs] Restore Hosts'$N
sleep 0.1
echo -e $W'[i] Web & Info            [in] Instructions'$N
sleep 0.1
echo -e $W'[u] Current-O-Update      [ck] Check Domain'$N
sleep 0.1
echo -e $G'[si] Submit Issue         '$N$R'[q] Quit.'$N
# Read Input
# ----------------------------------------
		echo -e -n "\033[33;1m[+] Your Input\033[0m - "
		read -r INPUT
		if [ "$INPUT" != "m" ]; then
			INPUT="$(echo -e "$INPUT" | sed 's/m//g')"
			clear
		fi
		DIR=""
	fi
	case "$INPUT" in
	    # Spark Protection
		1|spark|Spark|SPARK) DIR="master/spark/formats/hosts.gz"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Spark Protection'$N
		;;
		# Blu Go Protection
		2|blugo|BluGo|bluGo|BLUGO) DIR="master/bluGo/formats/hosts.gz"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Go Protection'$N
		echo -e $Y"$divider"$N
		;;
		# Blu Protection
		3|blu|Blu|BLU) DIR="master/blu/formats/hosts.gz"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Protection'$N
		echo -e $Y"$divider"$N
		;;
		# Basic Protection
		4|basic|Basic|BASIC) clear
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
		echo -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Basic..."
		  DIR="master/basic/formats/hosts.gz"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Basic Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Ultimate Protection
		5|ultimate|Ultimate|ULTIMATE) clear
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
		echo -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Ultimate..."
		  DIR="master/ultimate/formats/hosts.gz"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Ultimate Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Unified Protection
		6|unified|Unified|UNIFIED) clear
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
		echo -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying Energized Unified..."
		  DIR="master/unified/formats/hosts.gz"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Unified Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Porn Extension
		# ----------------------------------------
        p|porn|Porn|PORN) clear
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
		echo -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  clear
		  echo -e $Y"$divider"$N
		  echo -e $Y'[+] PORN HOSTS EXTENSION'$N
		  sleep 0.1
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e "Adds Porn Blocking Pack to current hosts."
		  echo -e $Y"$divider"$N
		  echo -e ""
		  wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/master/porn/formats/hosts.gz
		  echo -e "[+] Applying Porn Hosts to current hosts."
		  gzip -d -c $SHOST > $PTEMP
		  mv $HOST $TEMP
		  rm -f $HOST
		  cat $TEMP $PTEMP > $HOST
		  awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		  rm -f $TEMP $PTEMP $SHOST
		  echo -e $G'[+] Done!'$N
		  echo -e "[+] Returning..."
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Porn Lite Extension
		# ----------------------------------------
        pl)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] PORN LITE HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Adds Porn Lite Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/porn-lite/formats/hosts.gz
		echo -e "[+] Applying Porn Lite Hosts to current hosts."
		gzip -d -c $SHOST > $PTEMP
        mv $HOST $TEMP
        rm -f $HOST
		cat $TEMP $PTEMP > $HOST
		awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		rm -f $TEMP $PTEMP $SHOST
		echo -e $G'[+] Done!'$N
		echo -e "[+] Returning..."
		;;
		# Social Extension
		# ----------------------------------------
		s|social|Social|SOCIAL)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] SOCIAL HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Adds Social Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/social/formats/hosts.gz
		echo -e "[+] Applying Social Hosts to current hosts."
		gzip -d -c $SHOST > $STEMP
        mv $HOST $TEMP
		cat $TEMP $STEMP > $HOST
		awk '!a[$0]++' $HOST > $STEMP && mv -f $STEMP $HOST
		rm -f $TEMP $STEMP $SHOST
		echo -e $G'[+] Done!'$N
		echo -e "[+] Returning..."
		;;
		# Xtreme Extension
		# ----------------------------------------
		x|X|xtreme|XTRM|xtrm|Xtrm|Xtreme) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y"Hold on a sec!"$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W"Energized Xtreme Extension strictly blocks every"$N
		sleep 0.1
		echo -e $W"annoyance out there. Which may break app(s) and"$N
		sleep 0.1
		echo -e $W "website(s)."$N
		echo -e ''
		sleep 0.1
		echo -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  clear
		  echo -e $Y"$divider"$N
		  echo -e $Y'[+] XTREME HOSTS EXTENSION'$N
		  sleep 0.1
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e "Adds Xtreme Blocking Pack to current hosts."
		  echo -e $Y"$divider"$N
		  echo -e ""
		  wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/xtreme/formats/hosts.gz
		  echo -e "[+] Applying Xtreme Hosts to current hosts."
		  gzip -d -c $SHOST > $PTEMP
		  mv $HOST $TEMP
		  rm -f $HOST
		  cat $TEMP $PTEMP > $HOST
		  awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		  rm -f $TEMP $PTEMP $SHOST
		  echo -e $G'[+] Done!'$N
		  echo -e "[+] Returning..."
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Current-O-Update
		# ----------------------------------------
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
		  wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/master/$autopack/formats/hosts.gz
		  gzip -d -c $SHOST > $HOST
		  rm -f $SHOST
		  echo -e $G"[+] Done Applying!"$N
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
				echo -e $W'[+] Copy your whilelist to'$N $Y" $DIRECTORY"$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
					echo -e $G'[+] Whitelist Found!'$N
					echo -e $W'[+] Applying Whitelist'$N
					sleep 0.3
					grep -Fvxf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 0.5
					grep -Fvf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 0.5
					grep -vxf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 0.1
					echo -e $G'[+] Done'$N
					echo -e $W'[+] Make sure to reboot once after applying.'$N
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
				echo -e $W'[+] Copy your blacklist to'$N $Y" $DIRECTORY"$N
			else
				if [ -f "$HOST" ]; then
					if [ -s $BLACKLIST ]; then
						echo -e $G'[+] Blacklist Found!'$N
						echo -e $W'[+] Applying Blacklist...'$N
						sleep 0.1
						echo -e $W'[+] May take a while, depending on hosts size.'$N
						sleep 0.1
						echo -e $C'[+] Blacklist Log -'$N
						sleep 0.1
						rm -f $TEMP $STEMP $PTEMP $LTEMP
						sed 's/^ *//; s/ *$//; /^$/d; /^#/ d' $BLACKLIST > $LTEMP
						sort -u $LTEMP > $TEMP
						NEWFILTERS="$(cat $TEMP)"
						echo -e "\n# Applied on - $date" >> $HOST
						printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
						do
						  if [ ! "$(grep -x "$curip$linenew" $HOST)" ]; then
						    echo -e "$curip$linenew" >> $HOST
						    echo -e $Y"$linenew "$N$W"- blacklisted."$N
						  else
						    echo -e $R"$linenew "$N$W"- already blacklisted."$N
						  fi
						done
				        rm -f $TEMP $STEMP $PTEMP $LTEMP
				        echo -e $G'[+] Done'$N
						echo -e $W'[+] Make sure to reboot once after applying.'$N
						sleep 0.5
						echo -e "[+] Returning..."
						sleep 1
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo -e $W'[+] Returning...'$N
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
		# Whitelist
		# ----------------------------------------
		w) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ W H I T E L I S T I N G'$N
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
					echo -e $W'[+] May take a while, depending on hosts size.'$N
					NEWFILTERS="$(cat $WHITELIST)"
					printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
					do
					  if [ ! "$(grep -x "$curip$linenew" $HOST)" ]; then
					    echo -e $G"$linenew "$N$W"- already whitelisted."$N
					  else
					    echo -e $Y"$linenew "$N$W"- whitelisted."$N
					  fi
					done
					sleep 0.3
					grep -Fvxf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 0.5
					grep -Fvf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 0.5
					grep -vxf $WHITELIST $HOST > $TEMP
					rm -f $HOST
					mv -f $TEMP $HOST
					sleep 1
					echo -e $G'[+] Done'$N
					echo -e $W'[+] Make sure to reboot once after applying.'$N
					sleep 0.5
					echo -e "[+] Returning..."
					sleep 1.5
				else
					echo -e ""
					echo -e $R'[-] No hosts file detected!'$N
					sleep 1
					echo -e $Y'[+] Apply a hosts file first'$N
					sleep 2
				fi
		    fi
		;;
		# Instant Whitelist
		# ----------------------------------------
		iw) while true
		do
		clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ I N S T A N T  W H I T E L I S T'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Instant whitelist will let you add a domain at a\ntime to add to your hosts as whitelisted.\nNote. To Whitelist more domains, use 'w' method."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Applying $iw as whitelist..."
		  grep -Fvx "$curip$iw" $HOST > $TEMP
		  rm -f $HOST
		  mv -f $TEMP $HOST
		  echo -e "$iw" >> $WHITELIST
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  echo -e $W'[+] Whitelist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		else
		  clear
		  echo -e $W'[+] Whitelist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.3
		fi
		done
		;;
		# Blacklist
		# ----------------------------------------
		b)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ B L A C K L I S T I N G'$N
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
						sleep 0.1
						echo -e $W'[+] May take a while, depending on hosts size.'$N
						sleep 0.1
						echo -e $C'[+] Blacklist Log -'$N
						sleep 0.1
						rm -f $TEMP $STEMP $PTEMP $LTEMP
						sed 's/^ *//; s/ *$//; /^$/d; /^#/ d' $BLACKLIST > $LTEMP
						sort -u $LTEMP > $TEMP
						NEWFILTERS="$(cat $TEMP)"
						echo -e "\n# Applied on - $date" >> $HOST
						printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
						do
						  if [ ! "$(grep -x "$curip$linenew" $HOST)" ]; then
						    echo -e "$curip$linenew" >> $HOST
						    echo -e $Y"$linenew "$N$W"- blacklisted."$N
						  else
						    echo -e $R"$linenew "$N$W"- already blacklisted."$N
						  fi
						done
				        rm -f $TEMP $STEMP $PTEMP $LTEMP
				        echo -e $G'[+] Done'$N
						echo -e $W'[+] Make sure to reboot once after applying.'$N
						sleep 0.5
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
		# Instant Blacklist
		# ----------------------------------------
		ib) while true
		do
		clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ I N S T A N T  B L A C K L I S T'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Instant Blacklist will let you add a domain at a\ntime to add to your hosts as blacklisted.\nNote. To Blacklist more domains, use 'b' method."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $W'[+] Enter Domain Name Only:'$N $ib
		read ib
		if [ ! "$(grep -x "$curip$ib" $HOST)" ]; then
		  echo -e $W'[+] Your Domain(s)'$N $Y"$ib"$N
		  echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		  read answer
		  if [ "$answer" == "Y" ]; then
		    echo -e "[+] Applying $ib as blacklist..."
		    echo -e "\n# Instant Blacklist Applied on - $date" >> $HOST
		    echo -e "$curip$ib" >> $HOST
			echo -e $Y"$ib "$N$W"- blacklisted."$N
			sleep 0.6
		    echo -e "\n# Applied on - $date" >> $BLACKLIST
		    echo -e "$ib" >> $BLACKLIST
		    echo -e $W'[+] Done'$N
			echo -e $W'[+] Make sure to reboot once after applying.'$N
			sleep 0.5
		    echo -e $W'[+] Returning...'$N
		    sleep 0.4
		    echo -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		  else
		    clear
		    echo -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		    sleep 0.3
		  fi
		else
		  echo -e $G'[+] Domain was already being added to the hosts!'$N
		  sleep 1
		  echo -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		  fi
		done
		;;
		# Redirect
		# ----------------------------------------
		r) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ R E D I R E C T'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e ""
		sleep 0.1
		echo -e "Redirects the domains in the list to an IP."
		# Begins
		    if [ ! -f $REDIRECTLIST ]; then
				echo -e ""
				echo -e $R'[-] No Redirectlist detected!'$N
				echo -e $W'[+] Copy your redirect list to'$N $Y'$DIRECTORY'$N
			else
				if [ -f "$HOST" ]; then
					if [ -s $REDIRECTLIST ]; then
					echo -e $G'[+] Redirectlist Found!'$N
					echo -e ''
					echo -e $W'[+] Enter IP (v4 or v6):'$N $ip
					read ip
					echo -e $W'[+] Your IP:'$N $Y"$ip"$N
					echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
					read answer
					if [ "$answer" == "Y" ]; then
						echo -e $W'[+] Redirecting...'$N
						sleep 0.1
						echo -e $W'[+] May take a while, depending on hosts size.'$N
						sleep 0.1
						echo -e $C"[+] Redirect Log -"$N
						rm -f $STEMP
						cp $REDIRECTLIST $STEMP
						echo -e "\n# Applied on - $date" >> $HOST
						sed 's/^ *//; s/ *$//; /^$/d; /^#/d' $STEMP > $TEMP
						rm -f $STEMP
						NEWFILTERS="$(cat $TEMP)"
						printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
						do
						grep -Fvx "$curip$linenew" $HOST > $STEMP
						rm -f $HOST
						mv -f $TEMP $HOST
						  if [ ! "$(grep -Fx "$curip$linenew" $HOST)" ]; then
							echo -e "$ip $linenew" >> $HOST
							echo -e $Y"$linenew "$N$W"- redirected to "$N$G"$ip"$N
						  fi
						done
						echo -e $G'[+] Done'$N
						echo -e $W'[+] Make sure to reboot once after applying.'$N
						sleep 0.5
						echo -e $W'[+] Returning...'$N
						sleep 1
						else
						echo -e $W'[+] Returning...'$N
						fi
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo -e $W'[+] Returning...'$N
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
		# Instant Redirect
		# ----------------------------------------
		ir) while true
		do
		clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ I N S T A N T  R E D I R E C T'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Instant redirect helps to redirect any specific\n domain to any IP."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  grep -Fvx "$curip$iw" $HOST > $TEMP
		  rm -f $HOST
		  mv -f $TEMP $HOST
		  echo -e $W'[+] Enter IP (v4 or v6):'$N $ip
		  read ip
		  echo -e $W'[+] Your IP'$N $Y"$ip"$N
		  echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		  read answer
		  if [ "$answer" == "Y" ]; then
		    echo -e "\n$ip $iw" >> $HOST
		    echo -e "\n# Applied on - $date" >> $REDIRECTLIST
		    echo -e "$ip $iw" >> $REDIRECTLIST
		    else
		    echo -e "\n$curip $iw" >> $HOST
		  fi
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  echo -e $W'[+] Redirect Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		else
		  clear
		  echo -e $W'[+] Redirect Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.3
		fi
		done
		;;
		# Systemless Hosts
		# ----------------------------------------
		magisk|Magisk|MAGISK) xdg-open "https://forum.xda-developers.com/apps/magisk/module-energized-protection-one-t3806865"
		;;
		# Info
		# ----------------------------------------
		i|info|Info|INFO) xdg-open "https://energized.pro"
		;;
		# Instructions
		# ----------------------------------------
		in|instructions|instruction|IN|INSTRUCTION|INSTRUCTIONS) xdg-open "http://link.nayemador.com/epmagiskusage"
		;;
		# Submit Issue
		# ----------------------------------------
		si|SI|webapp|WEBAPP|WebApp|app|submit|Submit|issue|Submit|is|SUBMIT|ISSUE|IS) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'ϟ B O X  W E B  A P P'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Got any whitelist/blacklist issue? or anything\nelse? No worry! Just Submit via Web App."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $B'You will be redirected in 3 seconds...'$N
		sleep 3
		xdg-open "https://app.energized.pro"
		;;
		thanks|thx|thnx|thax|thank|thanku|thankyou|THX|Thanks) xdg-open "$saythanks"
		;;
		# Telegram
		# ----------------------------------------
		tg|telegram|Telegram|TELEGRAM) xdg-open "http://go.energized.pro/telegram"
		;;
		# Backup Hosts
		# ----------------------------------------
		bp) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ B A C K U P'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Makes a backup of your current hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $G'[+] Backup In Process...'$N
		gzip -9 -c $HOST > $HBP
		cp $FILTER $BFILTER
		cp $DFILTER $BDFILTER
		sleep 0.5
		echo -e $W'[+] Done!'$N
		sleep 0.5
		;;
		# Restore Hosts
		# ----------------------------------------
		rs|restore|Restore|RESTORE) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ R E S T O R E'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Restores the hosts backup."
		echo -e $Y"$divider"$N
		echo -e ""
		if [ -s $HBP ]; then
		echo -e $G'[+] Restoring...'$N
		gzip -d -c $HBP > $HOST
		cp $BFILTER $FILTER
		cp $BDFILTER $DFILTER
		sleep 0.5
		echo -e $W'[+] Done!'$N
		sleep 1.3
		else
		echo -e $R"[×] NO BACKUP FOUND!"$N
		sleep 1
		fi
		;;
		# Clear Hosts
		# ----------------------------------------
		c|clear|Clear|CLEAR) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ C L E A N  H O S T S'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Clean your current hosts to defualt."
		echo -e $Y"$divider"$N
		echo -e ""
		rm -rf $HOST
		rm -f $FILTER
		rm -f $DFILTER
		touch $FILTER
		touch $DFILTER
		echo -e "[+] Clearing Hosts File..."
		sleep 0.3
		echo -e "# Energized Protection - https://energized.pro\n# Let's make an annoyance free better open internet, altogether!\127.0.0.1 localhost\127.0.0.1 $hostname" >> $HOST
        echo -e "[+] Done Clearing Hosts!"
        echo -e "[+] Returning..."
        sleep 2
        ;;
		# Delta Patch
		# ----------------------------------------
		dp|deltapatch) clear
		DCURRENT=$(grep "#" $DREADME)
		DUPDATED=$(sed '1q;d' $DFILTER)
		if [ "$DUPDATED" != "$DCURRENT" ]; then
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ D E L T A  P A T C H S E T'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Apply Delta Blacklist and Whitelist."
		echo -e $Y"$divider"$N
		echo -e ""
		# Blacklist
		echo -e $W'[+] Downloading Blacklist Patch'$N
		wget --no-check-certificate -O $LTEMP https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/blacklist
		grep "#" $LTEMP > $DFILTER
		sed -i '/^#/d' $LTEMP
		echo -e $W'[+] Applying Delta Blacklist to current hosts.'$N
		sleep 0.1
		echo -e $W'[+] It may take a while, depending on hosts size.'$N
		sleep 0.1
		echo -e $C'[+] Blacklist Log -'$N
		sleep 0.1
		rm -f $TEMP $STEMP $PTEMP
		sed 's/^ *//; s/ *$//; /^$/d; /^#/ d' $LTEMP > $TEMP
		sort -u $TEMP > $LTEMP
		NEWFILTERS="$(cat $LTEMP)"
		echo -e "\n# Delta Patch - $date" >> $HOST
		printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
		do
			if [ ! "$(grep -x "$curip$linenew" $HOST)" ]; then
				echo -e "$curip$linenew" >> $HOST
				echo -e $Y"$linenew "$N$W"- blacklisted."$N
			else
				echo -e $R"$linenew "$N$W"- already blacklisted."$N
			fi
		done
		rm -f $TEMP $STEMP $PTEMP $LTEMP
		echo -e $G'[+] Done'$N
		echo -e ''
		sleep 0.5
		# Whitelist
		echo -e $W'[+] Downloading Whitelist Patch'$N
		wget --no-check-certificate -O $STEMP https://raw.githubusercontent.com/AdroitAdorKhan/Energized/master/core/delta-patchset/whitelist
		echo -e $W'[+] Applying Delta Whitelist to current hosts.'$N
		sleep 0.1
		echo -e $W'[+] It may take a while, depending on hosts size.'$N
		sleep 0.1
		NEWFILTERS="$(cat $STEMP)"
		printf '%s\n' "$NEWFILTERS" | while IFS= read -r linenew
		do
			if [ ! "$(grep -x "$curip$linenew" $HOST)" ]; then
				echo -e $G"$linenew "$N$W"- already whitelisted."$N
			else
				echo -e $Y"$linenew "$N$W"- whitelisted."$N
			fi
		done
		grep -Fvf $STEMP $HOST > $TEMP
		rm -f $HOST
		mv -f $TEMP $HOST
		rm -f $TEMP $STEMP
		echo -e $G'[+] Done!'$N
		echo -e $W'[+] Make sure to reboot once after applying.'$N
		sleep 0.5
		echo -e "[+] Returning..."
		sleep 2
		else
		echo -e $Y"[+] No New Patch is Available!"$N
		sleep 2
		fi
		;;
		# Redirection IP
		# ----------------------------------------
		ip) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ R E D I R E C T I O N  I P'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Add your custom Redirection IP. It must be an IP.\nUsing anything else than IP, may cause issue with\nyour hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $W'[+] Enter Redirection IP:'$N $ip
		read ip
		echo -e $W'[+] Your Redirection IP'$N $Y"$ip"$N
		echo -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo -e "[+] Adding $ip as redirection IP..."
		  rm -f $TEMP $STEMP $PTEMP
		  sed -n '1,79p' $HOST > $PTEMP
		  sed -e '1,78d' < $HOST > $TEMP
		  rm -f $HOST
		  sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'"${ip}"'/g' $TEMP > $STEMP
		  awk '!a[$0]++' $STEMP > $TEMP
		  cat $PTEMP $TEMP > $HOST
		  rm -f $TEMP $STEMP $PTEMP $LTEMP
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -e $W'[+] RETURNING '$N
		  echo -e $Y'•'$N; sleep 0.2;
		  echo -e $Y'•'$N; sleep 0.3;
		  echo -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Check Domain In Hosts
		# ----------------------------------------
		chk|check|Check|CHECK|ck) while true
		do
		clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ C H E C K  D O M A I N'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e "Check any specific domain availability in hosts."
		echo -e $Y"$divider"$N
		echo -e ""
		echo -e $W'[+] Enter Domain Name Only:'$N $domain
		read domain
		echo -e $W"[+] Your Domain"$N $Y"$domain"$N
		if [ ! "$(grep -x "$curip$domain" $HOST)" ]; then
		  echo -e $R"[×] $domain - "$N$W"is not in the list!"$N
		  sleep 1
		  echo -e $W'[+] Want to block the domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		  if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		    echo -e "[+] Applying $domain as blacklist..."
		    echo -e "\n# Instant Blacklist Applied on - $date" >> $HOST
		    echo -e "$curip$domain" >> $HOST
			echo -e $Y"$domain "$N$W"- blacklisted."$N
			sleep 0.6
		    echo -e "\n# Applied on - $date" >> $BLACKLIST
		    echo -e "$domain" >> $BLACKLIST
		    echo -e $W'[+] Done'$N
			echo -e $W'[+] Make sure to reboot once after applying.'$N
			sleep 0.5
		    echo -e $W'[+] Returning...'$N
		    sleep 1
		    echo -e $W'[+] Check Again?'$N $Y'[Y/N]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		  else
		    echo -e $W'[+] Check Again?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		    echo -e $W'[+] RETURNING...'$N
		  fi
		else
		  echo -e $G"[✓] $domain - "$N$W"is in the list!"$N
		  sleep 1
		  echo -e $W'[+] Check Again?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		  if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		    break
		  fi
		fi
		done
		;;
		# Quit
		# ----------------------------------------
		q) break
		clear
		reset
		;;
		*)  echo -e $R"$divider"$N
			echo -e $R"----------- I N V A L I D  I N P U T ! ----------"$N
			echo -e $R"$divider"$N
			sleep 2
		;;
	esac
	if [ $DIR ]; then
		echo -e ""
		wget --no-check-certificate -O $SHOST https://raw.githubusercontent.com/EnergizedProtection/block/$DIR
		gzip -d -c $SHOST > $HOST
        sed -i "53i 127.0.0.1 $hostname" $HOST
		rm -f $SHOST
		echo -e $G'[+] Done Applying!'$N
		sleep 0.5
		echo -e $W'[+] Make sure to reboot once after applying.'$N
		sleep 0.5
		echo -e $Y"$divider"$N
		grep "Version Code" $TREADME > $FILTER
		sleep 0.5
		CURRENT=$(grep "Version Code" $TREADME)
		LAST_UPDATED=$(sed '1q;d' $FILTER)
		if [ "$LAST_UPDATED" != "$CURRENT" ]; then
		rm -f $DFILTER
		touch $DFILTER
		fi
		echo -e $W'[+] Returning...'$N
		sleep 0.5
		clear
	fi
	DIR=""
	COUNT=$((COUNT+1))
	clear
	reset
done
rm -f $TREADME
echo -e "[+] Done!"
# Script Ends
# ----------------------------------------
clear 
sleep 0.3
echo -e $Y"$divider"$N
sleep 0.1
echo -n -e $Y"---------- "$N$W'S '$N; sleep 0.1; 
echo -n -e $W'T '$N; sleep 0.1; 
echo -n -e $W'A '$N; sleep 0.1; 
echo -n -e $W'Y '$N; sleep 0.1; 
echo -n -e $W' E '$N; sleep 0.1; 
echo -n -e $W'N '$N; sleep 0.1; 
echo -n -e $W'E '$N; sleep 0.1; 
echo -n -e $W'R '$N; sleep 0.1; 
echo -n -e $W'G '$N; sleep 0.1; 
echo -n -e $W'I '$N; sleep 0.1; 
echo -n -e $W'Z '$N; sleep 0.1; 
echo -n -e $W'E '$N; sleep 0.1; 
echo -n -e $W'D '$N; sleep 0.1; 
echo -n -e $Y'ϟ '$N 
echo -e $Y'---------'$N;
sleep 0.1
echo -e $Y"$divider"$N
echo ""
sleep 1
