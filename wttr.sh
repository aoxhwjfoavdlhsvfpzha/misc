#Simple script gets your IP, then zipode, then current weather conditions from various sites
EXTIP=$(curl -s https://ipinfo.io/ip)
ZIPCODE=$(curl -s "http://ip-api.com/json/$EXTIP" | grep -oE "zip\":\"[0-9]{5}\"" | grep -oE [0-9]{5})
curl -s "wttr.in/$ZIPCODE?0u"
