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
DIRECTORY=EnergizedProtection
rm -f $DIRECTORY/filter

# Deletes Unnecessary stuffs
# ----------------------------------------
DREADME=$DIRECTORY/cache/deltaReadme
DFILTER=$DIRECTORY/cache/deltaFilter

if [ -f $DREADME ]; then
  rm -f $DREADME
  rm -f $DFILTER
  rm -f $DIRECTORY/deltaFilter
  rm -f $DIRECTORY/deltaReadme
fi

# Divider
# ----------------------------------------
divider="-------------------------------------------------"

# Create Energized Protection Directory
# ----------------------------------------
if [ ! -d $DIRECTORY ]; then
    mkdir -p $DIRECTORY;
fi

# Versioning & Date
# ----------------------------------------
version=$Y'flaky'$N > /dev/null 2>&1
released=$G'Dec 09, 2018'$N > /dev/null 2>&1
saythanks='https://saythanks.io/to/AdroitAdorKhan' > /dev/null 2>&1
date=$(date "+%d.%m.%Y %H:%M:%S")

# Start Echos
# ----------------------------------------
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
echo -e "      Version: $version | Updated: $released"
sleep 0.1
echo "$divider"
sleep 0.1
echo ""
sleep 0.1
echo -e $Y'                  energized.pro'$N
echo ""
sleep 0.1
echo "                 CC BY-NC-SA 4.0"
echo ''
sleep 0.5
echo -n -e $Y'                        •'$N; sleep 0.2;
echo -n -e $Y'•'$N; sleep 0.3;
echo -n -e $Y'•'$N; sleep 0.2;
sleep 2
clear

# Disclaimer
# ----------------------------------------
echo -e $R"$divider"$N
echo -e $R'D I S C L A I M E R'$N
echo -e $R"$divider"$N
echo -e $R"THIS IS SIMPLY A MODULE TO CHANGE YOUR MACHINE's"$N
echo -e $R"HOSTS FILE. IF YOU DON'T KNOW WHAT YOU ARE DOING,"$N
echo -e $R"THEN PLEASE DON'T PROCEED. I WON'T BE RESPONSIBLE"$N
echo -e $R"FOR THE MESS YOU CREATE."$N
echo -e $R"$divider"$N
echo ''
echo -e $Y"$divider"$N
echo -e $Y'W A R N I N G'$N
echo -e $Y"$divider"$N
echo -e $Y"BASIC, PORN, ULTIMATE & UNIFIED PACKS ARE BIGGER"$N
echo -e $Y"IN SIZE. USE THEM, IF YOUR DEVICE CAN HANDLE"$N
echo -e $Y"THE LOAD."$N
echo -e $Y"$divider"$N
echo ''
echo -e $P"$divider"$N
echo -e $P'S U P P O R T  D E V E L O P M E N T'$N
echo -e $P"$divider"$N
echo -e $P"IF YOU LOVED OUR WORK, CONSIDER DONATING; TO"$N
echo -e $P"KEEP THE PROJECT ALIVE AND RUNNING."$N
echo -e $P"$divider"$N
curl -sf http://go.energized.pro/web > /dev/null
sleep 2

# Check Energized Directory
# ----------------------------------------
clear
echo "[+] Checking Energized Directory."; sleep 0.1; clear
echo "[+] Checking Energized Directory.."; sleep 0.2; clear
echo "[+] Checking Energized Directory..."; sleep 0.1; clear

# Create Cache Directory
# ----------------------------------------
if [ ! -d $DIRECTORY/cache ]; then
    mkdir -p $DIRECTORY/cache;
    echo "[+] Setting up working cache directory.";
fi
# Check Whitelist
# ----------------------------------------
if [ ! -f $DIRECTORY/blacklist ]; then
   clear
   echo "[+] Creating Blacklist.";
   touch $DIRECTORY/blacklist
   sleep 0.2
fi
# Check Blacklist
# ----------------------------------------
if [ ! -f $DIRECTORY/whitelist ]; then
   clear
   echo "[+] Creating Whitelist.";
   touch $DIRECTORY/whitelist
   sleep 0.2
fi
# Check Redirectlist
# ----------------------------------------
if [ ! -f $DIRECTORY/redirectlist ]; then
   clear
   echo "[+] Creating Redirectlist.";
   touch $DIRECTORY/redirectlist
   sleep 0.2
fi
# Check Temp
# ----------------------------------------
if [ ! -f $DIRECTORY/cache/temp ]; then
   clear
   echo "[+] Creating temporary cache...";
   touch $DIRECTORY/cache/temp
   sleep 0.2
fi
# Check Porn Temp
# ----------------------------------------
if [ ! -f $DIRECTORY/cache/ptemp ]; then
   clear
   echo "[+] Creating Temp...";
   touch $DIRECTORY/cache/ptemp
   sleep 0.2
fi
# Check Social Temp
# ----------------------------------------
if [ ! -f $DIRECTORY/cache/stemp ]; then
   clear
   echo "[+] Creating Temp...";
   touch $DIRECTORY/cache/stemp
   sleep 0.2
fi

# TIP 1
# ----------------------------------------
clear
echo -e $G"$divider"$N
echo -e $G"T I P s"$N
echo -e $G"$divider"$N
echo ''
echo -e $W'~ NOT SURE WHAT YOU ARE DOING?\n- MAKE BACKUP & THEN RESTORE! ;)'$N
sleep 0.1
echo ''
echo -e $W'~ NEED MORE INFO?\n- TYPE TG AND JOIN US! B)'$N
sleep 0.1
echo ''
echo -e $W'~ WANT TO GO TO MAGISK DIRECTLY FROM\nTHE SCRIPT? - TYPE MAGISK & HIT ENTER! :D'$N
sleep 2

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

# Check Energized Pack
# ----------------------------------------
	[ -f /system/etc/hosts ];
if busybox grep -q "E84S1C-P" $HOST; then
	echeck="Basic Protection"
	autopack="basic"
elif busybox grep -q "E5P4RK-P" $HOST; then
	echeck="Spark Protection"
	autopack="spark"
elif busybox grep -q "E8LU-P" $HOST; then
	echeck="Blu Protection"
	autopack="blu"
elif busybox grep -q "E8LUG0-P" $HOST; then
	echeck="Blu Go Protection"
	autopack="bluGo"
elif busybox grep -q "EP0R9-P" $HOST; then
	echeck="Porn Protection"
	autopack="porn"
elif busybox grep -q "EUL71M473-P" $HOST; then
	echeck="Ultimate Protection"
	autopack="ultimate"
elif busybox grep -q "EU91F13D-P" $HOST; then
	echeck="Unified Protection"
	autopack="unified"
else
	echeck="No Pack Detected!"
	autopack="null"
fi

# Check Root
# ----------------------------------------
id="$(id)"; id="${id#*=}"; id="${id%%\(*}"; id="${id%% *}"
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
    root="[×]"
else
    root=$G"[✓]"$N
fi

# Other Variables
# ----------------------------------------
update=$C"`date -r $HOST "+%a, %d %b %y %H:%M:%S"`"$N
size=$P"`ls -lah $HOST | awk '{print $5}'`"$N

# Check Adblocker
# ----------------------------------------
   [ -f $HOST ];
if busybox grep -q ads $HOST; then
	adblocker=$G"[✓]"$N
else
	adblocker="[×]"
fi

# Check Energized
# ----------------------------------------
	[ -f $HOST ];
if busybox grep -q watchdog.energized.pro $HOST; then
	eonoff=$G"[✓]"$N
else
	eonoff=$R"[×]"$N
fi

# TIP 2
# ----------------------------------------
clear
echo -e $Y"$divider"$N
echo -e $Y"T I P s"$N
echo -e $Y"$divider"$N
echo ''
echo -e $W'~ TO DISABLE, JUST TOGGLE THE SYSTEMLESS HOSTS\nIN MAGISK MANAGER. (≤17.3)'$N
sleep 0.1
echo ''
echo -e $W'~ GOT ANY ISSUE?\n - SUBMIT ISSUE VIA WEB APP.'$N
sleep 0.1
echo ''
echo -e $W'~ WANT TO UNINSTALL?\n - TYPE C & DONE!(≥17.4)'$N
sleep 0.1
echo ''
echo -e $W'~ FEELING THANKFUL? ^_^\n - TYPE THX & YOU ARE MOST WELCOME! <3'$N
sleep 1.5

# Check Hosts Update
# ----------------------------------------
if [ "$autopack" != "null" ]; then
clear
echo "[+] Checking Update"; sleep 0.1; clear
echo "[+] Checking Update."; sleep 0.15; clear
echo "[+] Checking Update.."; sleep 0.18; clear
echo "[+] Checking Update..."; sleep 0.2;

wget --no-check-certificate -q -O $TREADME https://raw.githubusercontent.com/EnergizedProtection/block/master/VERSION.md
grep -q "Version Code" $TREADME
cp $TREADME $BREADME
if [ -f $FILTER ]; then
	CURRENT=$(grep "Version Code" $TREADME)
	LAST_UPDATED=$(sed '1q;d' $FILTER)
	if [ "$LAST_UPDATED" != "$CURRENT" ]; then
	  if [ "$(grep "watchdog.energized.pro" $HOST)" ]; then
	    eupdate=$G'[ϟ] UPDATE AVAILABLE!'$N
	  fi
	else
		eupdate=$W'[✓] UP-TO-DATE!'$N
	fi
else
	touch $FILTER
	eupdate="[+] APPLY PACK FIRST!"
fi
clear
echo "[+] Checking Update.."; sleep 0.18; clear
echo "[+] Checking Update."; sleep 0.15; clear
echo "[+] Checking Update"; sleep 0.1; clear
else
	eupdate="[+] APPLY PACK FIRST!"
fi

# Input
# ----------------------------------------
INPUT=$(eval "echo \$$COUNT")
	if [ ! "$INPUT" ]; then
		if [ "$1" ]; then
			rm -f $TREADME
			exit 0
		fi
# Starts Screen Echos
# ----------------------------------------
clear
echo ''
echo -e $Y"      _____  _________  _____________  _______  "$N; sleep 0.1;
echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N; sleep 0.1;
echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N; sleep 0.1;
echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N; sleep 0.1;
echo ''
sleep 0.1
echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N
echo -e "                                         v.$version"
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'ϟ B A S I C  I N F O -'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $root$W" ROOT             "$N$W"[+] BUSYBOX: $bboxname"$N
sleep 0.1
echo -e $eonoff$W" ENERGIZED        "$N$W"[+] PACK: "$N$B"$echeck"$N
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
echo -e $Y"ϟ E X T E N S I O N s -"$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W"[p] Porn          [rl] Regional    [x] Xtreme"$N
sleep 0.1
echo -e $W"[pl] Porn Lite    [s] Social"$N
sleep 0.1
# Options
# ----------------------------------------
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'ϟ O P T I O N s -'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
echo -e $W'[o] Open Hosts File       [ip] Redirection IP'$N
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
echo -e $W'[bp] Backup       [rs] Restore        [ck] Check'$N
sleep 0.1
echo -e $W'[u] Update H&WB   [in] Instructions   [i] Info'$N
sleep 0.1
echo -e $R'[c] Clear Hosts   '$N$G'[si] Submit Issue   '$N$R'[q] Quit.'$N
sleep 0.1
echo -e $Y"$divider"$N
sleep 0.1
# Read Input
# ----------------------------------------
		echo -n -e $Y"[+] Your Input - "$N
		read -r INPUT
		if [ "$INPUT" != "m" ]; then
			INPUT="$(echo "$INPUT" | sed 's/m//g')"
			clear
		fi
		DIR=""
	fi
	case "$INPUT" in
	    # Spark Protection
		1|spark|Spark|SPARK) DIR="spark"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Spark Protection'$N
		;;
		# Blu Go Protection
		2|blugo|BluGo|bluGo|BLUGO) DIR="bluGo"
		clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'[+] Applying Energized Blu Go Protection'$N
		echo -e $Y"$divider"$N
		;;
		# Blu Protection
		3|blu|Blu|BLU) DIR="blu"
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
		echo ''
		sleep 0.1
		echo -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  echo "[+] Applying Energized Basic..."
		  DIR="basic"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Basic Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo ''
		sleep 0.1
		echo -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  echo "[+] Applying Energized Ultimate..."
		  DIR="ultimate"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Ultimate Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo ''
		sleep 0.1
		echo -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  echo "[+] Applying Energized Unified..."
		  DIR="unified"
		  clear
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo -e $Y'[+] Applying Energized Unified Protection'$N
		  echo -e $Y"$divider"$N
		  sleep 0.3
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo ''
		sleep 0.1
		echo -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  clear
		  echo -e $Y"$divider"$N
		  echo -e $Y'[+] PORN HOSTS EXTENSION'$N
		  sleep 0.1
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo "Adds Porn Blocking Pack to current hosts."
		  echo -e $Y"$divider"$N
		  echo ""
		  wget --no-check-certificate -O $SHOST https://block.energized.pro/porn/formats/hosts.gz
		  echo "[+] Applying Porn Hosts to current hosts."
		  gzip -d -c $SHOST > $PTEMP
		  mv $HOST $TEMP
		  rm -f $HOST
		  cat $TEMP $PTEMP > $HOST
		  awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		  rm -f $TEMP $PTEMP $SHOST
		  echo -e $G'[+] Done!'$N
		  echo "[+] Returning..."
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo "Adds Porn Lite Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo ""
		wget --no-check-certificate -O $SHOST https://block.energized.pro/extensions/porn-lite/formats/hosts.gz
		echo "[+] Applying Porn Lite Hosts to current hosts."
		gzip -d -c $SHOST > $PTEMP
        mv $HOST $TEMP
        rm -f $HOST
		cat $TEMP $PTEMP > $HOST
		awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		rm -f $TEMP $PTEMP $SHOST
		echo -e $G'[+] Done!'$N
		echo "[+] Returning..."
		;;
		# Regional Extension
		# ----------------------------------------
		rl|rg|regional|Regional|REGIONAL|REG|reg)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] REGIONAL HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Adds Regional Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo ""
		wget --no-check-certificate -O $SHOST https://block.energized.pro/extensions/regional/formats/hosts.gz
		echo "[+] Applying Regional Hosts to current hosts."
		gzip -d -c $SHOST > $STEMP
        mv $HOST $TEMP
		cat $TEMP $STEMP > $HOST
		awk '!a[$0]++' $HOST > $STEMP && mv -f $STEMP $HOST
		rm -f $TEMP $STEMP $SHOST
		echo -e $G'[+] Done!'$N
		echo "[+] Returning..."
		;;
		# Social Extension
		# ----------------------------------------
		s|social|Social|SOCIAL)  clear
		echo -e $Y"$divider"$N
		echo -e $Y'[+] SOCIAL HOSTS EXTENSION'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Adds Social Blocking Pack to current hosts."
		echo -e $Y"$divider"$N
		echo ""
		wget --no-check-certificate -O $SHOST https://block.energized.pro/extensions/social/formats/hosts.gz
		echo "[+] Applying Social Hosts to current hosts."
		gzip -d -c $SHOST > $STEMP
        mv $HOST $TEMP
		cat $TEMP $STEMP > $HOST
		awk '!a[$0]++' $HOST > $STEMP && mv -f $STEMP $HOST
		rm -f $TEMP $STEMP $SHOST
		echo -e $G'[+] Done!'$N
		echo "[+] Returning..."
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
		echo -e $W"website(s)."$N
		echo ''
		sleep 0.1
		echo -n -e $W'[+] PROCEED?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  clear
		  echo -e $Y"$divider"$N
		  echo -e $Y'[+] XTREME HOSTS EXTENSION'$N
		  sleep 0.1
		  echo -e $Y"$divider"$N
		  sleep 0.1
		  echo "Adds Xtreme Blocking Pack to current hosts."
		  echo -e $Y"$divider"$N
		  echo ""
		  wget --no-check-certificate -O $SHOST https://block.energized.pro/extensions/xtreme/formats/hosts.gz
		  echo "[+] Applying Xtreme Hosts to current hosts."
		  gzip -d -c $SHOST > $PTEMP
		  mv $HOST $TEMP
		  rm -f $HOST
		  cat $TEMP $PTEMP > $HOST
		  awk '!a[$0]++' $HOST > $PTEMP && mv -f $PTEMP $HOST
		  rm -f $TEMP $PTEMP $SHOST
		  echo -e $G'[+] Done!'$N
		  echo "[+] Returning..."
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
		  sleep 0.1
		fi
		;;
		# Update H&WB
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
		  echo ''
		  wget --no-check-certificate -O $SHOST https://block.energized.pro/$autopack/formats/hosts.gz
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
				echo ""
				echo -e $R'[-] No Whitelist Detected!'$N
				sleep 0.5
				echo -e $W'[+] Copy your whilelist to'$N $Y'EnergizedProtection/whitelist'$N
				sleep 2
		    else
				if [ -f "$HOST" ]; then
				 if [ -s $WHITELIST ]; then
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
				 fi
				else
					echo ""
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
				echo ""
				echo -e $R'[-] No Blacklist detected!'$N
				echo -e $W'[+] Copy your blacklist to'$N $Y'EnergizedProtection/blacklist'$N
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
						echo "[+] Returning..."
						sleep 1
					else
						echo -e $R'[-] Blacklist file is empty!'$N
						sleep 1
						echo -e $R'[-] NO NEW FILTER ADDED!'$N
						echo -e $W'[+] Returning...'$N
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
		echo ""
		# Begins
		if [ ! -f $WHITELIST ]; then
				echo ""
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
					echo "[+] Returning..."
					sleep 1.5
				else
					echo ""
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [ "$answer" == "Y" ]; then
		  echo "[+] Applying $iw as whitelist..."
		  grep -Fvx "$curip$iw" $HOST > $TEMP
		  rm -f $HOST
		  mv -f $TEMP $HOST
		  echo "$iw" >> $WHITELIST
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  echo -n -e $W'[+] Whitelist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		else
		  clear
		  echo -n -e $W'[+] Whitelist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo ""
		# Begins
		    if [ ! -f $BLACKLIST ]; then
				echo ""
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $ib
		read ib
		if [ ! "$(grep -x "$curip$ib" $HOST)" ]; then
		  echo -e $W'[+] Your Domain(s)'$N $Y"$ib"$N
		  echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		  read answer
		  if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		    echo "[+] Applying $ib as blacklist..."
		    echo -e "\n# Instant Blacklist Applied on - $date" >> $HOST
		    echo -e "$curip$ib" >> $HOST
			echo -e $Y"$ib "$N$W"- blacklisted."$N
			sleep 0.6
		    echo -e "\n# Applied on - $date" >> $BLACKLIST
		    echo "$ib" >> $BLACKLIST
		    echo -e $W'[+] Done'$N
			echo -e $W'[+] Make sure to reboot once after applying.'$N
			sleep 0.5
		    echo -e $W'[+] Returning...'$N
		    sleep 0.4
		    echo -n -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		  else
		    clear
		    echo -n -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
		    sleep 0.3
		  fi
		else
		  echo -e $G'[+] Domain was already being added to the hosts!'$N
		  sleep 1
		  echo -n -e $W'[+] Blacklist Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
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
		echo ""
		sleep 0.1
		echo "Redirects the domains in the list to an IP."
		# Begins
		    if [ ! -f $REDIRECTLIST ]; then
				echo ""
				echo -e $R'[-] No Redirectlist detected!'$N
				echo -e $W'[+] Copy your redirect list to'$N $Y'$DIRECTORY'$N
			else
				if [ -f "$HOST" ]; then
					if [ -s $REDIRECTLIST ]; then
					echo -e $G'[+] Redirectlist Found!'$N
					echo ''
					echo -n -e $W'[+] Enter IP (v4 or v6):'$N $ip
					read ip
					echo -e $W'[+] Your IP:'$N $Y"$ip"$N
					echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
					read answer
					if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
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
					echo ""
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $iw
		read iw
		echo -e $W'[+] Your Domain'$N $Y"$iw"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  grep -Fvx "$curip$iw" $HOST > $TEMP
		  rm -f $HOST
		  mv -f $TEMP $HOST
		  echo -n -e $W'[+] Enter IP (v4 or v6):'$N $ip
		  read ip
		  echo -e $W'[+] Your IP'$N $Y"$ip"$N
		  echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		  read answer
		  if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		    echo -e "\n$ip $iw" >> $HOST
		    echo -e "\n# Applied on - $date" >> $REDIRECTLIST
		    echo "$ip $iw" >> $REDIRECTLIST
		    else
		    echo -e "\n$curip $iw" >> $HOST
		  fi
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		  echo -n -e $W'[+] Redirect Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		else
		  clear
		  echo -n -e $W'[+] Redirect Another Domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
		  sleep 0.3
		fi
		done
		;;
		# Systemless Hosts
		# ----------------------------------------
		magisk|Magisk|MAGISK) am start -n com.topjohnwu.magisk/com.topjohnwu.magisk.MainActivity
		;;
		# Read Hosts File
		# ----------------------------------------
		o|O|oh|OH|openhosts|OpenHosts|hosts) clear
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $Y'ϟ O P E N  H O S T S  F I L E'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Open the hosts file."
		echo -e $Y"$divider"$N
		echo ''
		head -n 30 $HOST
		echo ''
		echo -n -e $W'[+] Open Hosts File?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  am start -a android.intent.action.VIEW -d file://$HOST -t text/plain
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
		  sleep 0.3
		fi
		;;
		# Info
		# ----------------------------------------
		i|info|Info|INFO) am start -a android.intent.action.VIEW -d "https://energized.pro"
		;;
		# Instructions
		# ----------------------------------------
		g|G|Guide|guide|in|instructions|instruction|IN|INSTRUCTION|INSTRUCTIONS) am start -a android.intent.action.VIEW -d "http://link.nayemador.com/epmagiskusage"
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
		echo "Got any whitelist/blacklist issue? or anything\nelse? No worry! Just Submit via Web App."
		echo -e $Y"$divider"$N
		echo ""
		echo -e $B'You will be redirected in 3 seconds...'$N
		sleep 3
		am start -a android.intent.action.VIEW -d "https://app.energized.pro"
		;;
		thanks|thx|thnx|thax|thank|thanku|thankyou|THX|Thanks) am start -a android.intent.action.VIEW -d "$saythanks"
		;;
		# Telegram
		# ----------------------------------------
		tg|telegram|Telegram|TELEGRAM) am start -a android.intent.action.VIEW -d "http://go.energized.pro/telegram"
		;;
		# Backup Hosts
		# ----------------------------------------
		bp) clear
		echo -e $Y"$divider"$N
		echo -e $Y'ϟ B A C K U P'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.1
		echo "Makes a backup of your current hosts."
		echo -e $Y"$divider"$N
		echo ""
		echo -e $G'[+] Backup In Process...'$N
		gzip -9 -c $HOST > $HBP
		cp $FILTER $BFILTER
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
		echo "Restores the hosts backup."
		echo -e $Y"$divider"$N
		echo ""
		if [ -s $HBP ]; then
		echo -e $G'[+] Restoring...'$N
		gzip -d -c $HBP > $HOST
		cp $BFILTER $FILTER
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
		echo "Clean your current hosts to default."
		echo -e $Y"$divider"$N
		echo ""
		truncate -s 0 $HOST
		rm -f $FILTER
		touch $FILTER
		echo "[+] Clearing Hosts File..."
		sleep 0.3
		echo -e "# Energized Protection - https://energized.pro\n# Let's make an annoyance free better open internet, altogether!\n\n127.0.0.1 localhost\n::1" >> $HOST
        echo "[+] Done Clearing Hosts!"
        echo "[+] Returning..."
        sleep 2
        clear
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
		echo ""
		echo -n -e $W'[+] Enter Redirection IP:'$N $ip
		read ip
		echo -e $W'[+] Your Redirection IP'$N $Y"$ip"$N
		echo -n -e $W'[+] Are you sure?'$N $Y'[Y/N]'$N: $G"$answer"$N
		read answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		  echo "[+] Adding $ip as redirection IP..."
		  rm -f $TEMP $STEMP $PTEMP
		  sed -n '1,79p' $HOST > $PTEMP
		  sed -e '1,78d' < $HOST > $TEMP
		  rm -f $HOST
		  sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/'"${ip}"'/g' $TEMP > $STEMP
		  awk '!a[$0]++' $STEMP > $TEMP
		  cat $PTEMP $TEMP > $HOST
		  chmod 644 $HOST
		  rm -f $TEMP $STEMP $PTEMP $LTEMP
		  echo -e $W'[+] Done'$N
		  echo -e $W'[+] Make sure to reboot once after applying.'$N
		  sleep 0.5
		  echo -e $W'[+] Returning...'$N
		  sleep 1
		else
		  clear
		  echo -n -e $W'[+] RETURNING '$N
		  echo -n -e $Y'•'$N; sleep 0.2;
		  echo -n -e $Y'•'$N; sleep 0.3;
		  echo -n -e $Y'•'$N; sleep 0.2;
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
		echo ""
		echo -n -e $W'[+] Enter Domain Name Only:'$N $domain
		read domain
		echo -e $W"[+] Your Domain"$N $Y"$domain"$N
		if [ ! "$(grep -x "$curip$domain" $HOST)" ]; then
		  echo -e $R"[×] $domain - "$N$W"is not in the list!"$N
		  sleep 1
		  echo -n -e $W'[+] Want to block the domain?'$N $Y'[y/n]'$N: $G"$answer"$N
		  read answer
		  if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
		    echo "[+] Applying $domain as blacklist..."
		    echo -e "\n# Instant Blacklist Applied on - $date" >> $HOST
		    echo -e "$curip$domain" >> $HOST
			echo -e $Y"$domain "$N$W"- blacklisted."$N
			sleep 0.6
		    echo -e "\n# Applied on - $date" >> $BLACKLIST
		    echo "$domain" >> $BLACKLIST
		    echo -e $W'[+] Done'$N
			echo -e $W'[+] Make sure to reboot once after applying.'$N
			sleep 0.5
		    echo -e $W'[+] Returning...'$N
		    sleep 1
		    echo -n -e $W'[+] Check Again?'$N $Y'[Y/N]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		  else
		    echo -n -e $W'[+] Check Again?'$N $Y'[y/n]'$N: $G"$answer"$N
		    read answer
		    if [[ "$answer" == "N" || "$answer" == "n" ]]; then
		      break
		    fi
		    clear
		    echo -n -e $W'[+] RETURNING...'$N
		  fi
		else
		  echo -e $G"[✓] $domain - "$N$W"is in the list!"$N
		  sleep 1
		  echo -n -e $W'[+] Check Again?'$N $Y'[y/n]'$N: $G"$answer"$N
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
		echo ""
		wget --no-check-certificate -O $SHOST https://block.energized.pro/$DIR/formats/hosts.gz
		gzip -d -c $SHOST > $HOST
		rm -f $SHOST
		echo -e $G'[+] Done Applying!'$N
		sleep 0.5
		echo -e $Y"$divider"$N
		sleep 0.1
		echo -e $W'[+] Make sure to reboot once after applying.'$N
		sleep 0.1
		echo -e $Y"$divider"$N
		sleep 0.3
		echo -e $Y'[+] If you loved our work, consider donating.'$N
		# Checks if an update is available after applying
		if [ ! -s $FILTER ]; then
		  wget --no-check-certificate -q -O $TREADME https://raw.githubusercontent.com/EnergizedProtection/block/master/VERSION.md
		  grep -q "Version Code" $TREADME
		  cp $TREADME $BREADME
		  grep "Version Code" $TREADME > $FILTER 2>/dev/null
		fi
		sleep 2
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
echo "[+] Done!"
# Script Ends
# ----------------------------------------
clear
sleep 0.3
echo -e $Y"$divider"$N
sleep 0.1
echo -e $Y'--------------- T H A N K   Y O U ---------------'$N
sleep 0.1
echo -e $Y"$divider"$N
echo ''
sleep 0.1
echo -e $Y'           Avinash - @AvinashReddy3108'$N
sleep 0.1
echo -e $Y'           Jason Y - @jasonsyoung'$N
sleep 0.1
echo -e $Y'           Romain. - @Rom'$N
sleep 1.5
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
