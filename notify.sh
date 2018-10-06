#!/bin/bash
if [[ -z "$TELEGRAM_BOT_API"  || -z "$TELEGRAM_CHAT_ID" ]]; then
   echo -e "Please set \033[0;31mTELEGRAM_BOT_API"\033[0m and \033[0;31mTELEGRAM_CHAT_ID"\033[0m as enviorment variable"
   exit 1
fi

Title="New DotOS Update Avaialable"
Device="Mido"
Maintainer="Someone"
Date=`date +%Y-%m-%d`

TEXT="▪️ $Title 

📲 Device: $Device 

👨🏼‍💻 Maintainer: $Maintainer

⌚️ Date: $Date"

curl -s -X POST https://api.telegram.org/bot$TELEGRAM_BOT_API/sendMessage -d chat_id=$TELEGRAM_CHAT_ID -d text="$TEXT"