#!/bin/bash
##!/data/data/com.termux/files/usr/bin/bash
lg="\e[32m"    
rr="\e[31m"
rw="\e[97m"
lb="\e[94m"
lo="\e[93m"
var=0
left=0
right=12
layout=""
quit=""
echo -e "(H)orizontal or (V)ertical?:"
read layout
if [ $layout == "v" ] || [ $layout == "V" ]; then
airports=('PPG' 'HNL' 'YAK' 'LAX' 'DEN' 'LOV' 'JFK' 'GIG' 'REC' 'GOH' 'PDL' 'LHR' 'MAD' 'JRS' 'SVO' 'GYD' 'KHI' 'DAC' 'BKK' 'HKG' 'HND' 'GUM' 'SYD' 'NAN')
while true; do


    printf "\033c"
    clear
  
    echo '   WorldClock 1.0 | Airport Edition | Vertical Layout | [Q]uit'
    echo ''
    echo "   ---------------------------------------------"
    echo -e "   |${rw} Zone  |${rw} Date             |${rw} Time     |${rw}${rw} Loc |"
    echo "   ---------------------------------------------"
    for tz in  Pacific/Pago_Pago Pacific/Honolulu America/Yakutat US/Pacific America/Denver US/Central US/Eastern Brazil/West America/Recife America/Godthab Atlantic/Azores Europe/London Europe/Madrid Asia/Jerusalem Europe/Moscow Asia/Baku Asia/Karachi Asia/Dhaka Asia/Bangkok Asia/Hong_Kong Asia/Tokyo Pacific/Guam Australia/Sydney Pacific/Fiji; do
    echo -e "   ${rw}| ${rr}$(TZ=$tz date '+%z') ${rw}| ${lo}$(TZ=$tz date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=$tz date '+%I:%M %p') ${rw}| ${lb}${airports[$var]} ${rw}|"
    echo "   ---------------------------------------------"
    let "var=var+1"
    done
    var=0
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi
done
fi
if [ $layout == "h" ] || [ $layout == "H" ]; then
airports=('PPG' 'HNL' 'YAK' 'LAX' 'DEN' 'LOV' 'JFK' 'GIG' 'REC' 'GOH' 'PDL' 'LHR' 'MAD' 'JRS' 'SVO' 'GYD' 'KHI' 'DAC' 'BKK' 'HKG' 'HND' 'GUM' 'SYD' 'NAN')
timezones=('Pacific/Pago_Pago' 'Pacific/Honolulu' 'America/Yakutat' 'US/Pacific' 'America/Denver' 'US/Central' 'US/Eastern' 'Brazil/West' 'America/Recife' 'America/Godthab' 'Atlantic/Azores' 'Europe/London' 'Europe/Madrid' 'Asia/Jerusalem' 'Europe/Moscow' 'Asia/Baku' 'Asia/Karachi' 'Asia/Dhaka' 'Asia/Bangkok' 'Asia/Hong_Kong' 'Asia/Tokyo' 'Pacific/Guam' 'Australia/Sydney' 'Pacific/Fiji')

while true; do

    printf "\033c"
    clear
  
    echo '   WorldClock 1.0 | Airport Edition | Horizontal Layout | [Q]uit'
    echo ''
    echo "   ---------------------------------------------   ---------------------------------------------"
    echo -e "   |${rw} Zone  |${rw} Date             |${rw} Time     |${rw}${rw} Loc |   |${rw} Zone  |${rw} Date             |${rw} Time     |${rw}${rw} Loc |"
    echo "   ---------------------------------------------   ---------------------------------------------"
    #for tz in  Pacific/Pago_Pago Pacific/Honolulu America/Yakutat US/Pacific America/Denver US/Central US/Eastern Brazil/West America/Recife America/Godthab Atlantic/Azores Europe/London Europe/Madrid Asia/Jerusalem Europe/Moscow Asia/Baku Asia/Karachi Asia/Dhaka Asia/Bangkok Asia/Hong_Kong Asia/Tokyo Pacific/Guam Australia/Sydney Pacific/Fiji; do
    for i in {0..11}; do
    echo -e "   ${rw}| ${rr}$(TZ=${timezones[$left]} date '+%z') ${rw}| ${lo}$(TZ=${timezones[$left]} date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=${timezones[$left]} date '+%I:%M %p') ${rw}| ${lb}${airports[$left]} ${rw}|   ${rw}| ${rr}$(TZ=${timezones[$right]} date '+%z') ${rw}| ${lo}$(TZ=${timezones[$right]} date '+%a %d-%b, %Y') ${rw}| ${lg}$(TZ=${timezones[$right]} date '+%I:%M %p') ${rw}| ${lb}${airports[$right]} ${rw}|"
    echo "   ---------------------------------------------   ---------------------------------------------"
    let "right=right+1"
    let "left=left+1"
    done
    right=12
    left=0
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep $((60 - $(date +%s) % 60))
    fi
    
    
done
fi
