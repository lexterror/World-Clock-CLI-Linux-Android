#!/data/data/com.termux/files/usr/bin/bash
lg="\e[32m"    
rr="\e[31m"
rw="\e[97m"
lb="\e[94m"
lo="\e[93m"
var=0
airports=('PPG' 'HNL' 'YAK' 'LAX' 'DEN' 'LOV' 'JFK' 'GIG' 'REC' 'GOH' 'PDL' 'LHR' 'MAD' 'JRS' 'SVO' 'GYD' 'KHI' 'DAC' 'BKK' 'HKG' 'HND' 'GUM' 'SYD' 'NAN')
while true; do


    printf "\033c"
    clear
    
echo '     ___           ___     '
echo '    /\  \         /\__\    '
echo '   _\:\  \       /:/  /    '
echo '  /\ \:\  \     /:/  /     '
echo ' _\:\ \:\  \   /:/  /  ___ '
echo '/\ \:\ \:\__\ /:/__/  /\__\'
echo '\:\ \:\/:/  / \:\  \ /:/  /'
echo ' \:\ \::/  /   \:\  /:/  / '
echo '  \:\/:/  /     \:\/:/  /  '
echo '   \::/  /       \::/  /   '
echo '    \/__/         \/__/    '

    echo ''
    echo -e "${rw}Zone_ ${rw}Date____________ ${rw}Time____${rw}   ${rw}Loc"
    for tz in  Pacific/Pago_Pago Pacific/Honolulu America/Yakutat US/Pacific America/Denver US/Central US/Eastern Brazil/West America/Recife America/Godthab Atlantic/Azores Europe/London Europe/Madrid Asia/Jerusalem Europe/Moscow Asia/Baku Asia/Karachi Asia/Dhaka Asia/Bangkok Asia/Hong_Kong Asia/Tokyo Pacific/Guam Australia/Sydney Pacific/Fiji; do
    echo -e "${rr}$(TZ=$tz date '+%z') ${lo}$(TZ=$tz date '+%a %d-%b, %Y') ${lg}$(TZ=$tz date '+%I:%M %p') ${rw}: ${lb}${airports[$var]}"
    let "var=var+1"
    done
    var=0
    
    sleep $((60 - $(date +%s) % 60))
done