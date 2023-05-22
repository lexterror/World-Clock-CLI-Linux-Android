#!/data/data/com.termux/files/usr/bin/bash
  for tz in  Pacific/Pago_Pago Pacific/Honolulu America/Adak  America/Yakutat US/Pacific America/Denver US/Central US/Eastern  America/Recife America/Godthab  Atlantic/Cape_Verde Atlantic/Azores Europe/London Europe/Madrid Europe/Moscow Asia/Baku Asia/Karachi Asia/Dhaka Asia/Bangkok Asia/Hong_Kong Asia/Tokyo Australia/Sydney Pacific/Noumea Pacific/Fiji; do
    echo -e "$tz:\t$(TZ=$tz date -R)"
done


