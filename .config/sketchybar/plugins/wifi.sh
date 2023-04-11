source "$HOME/.config/sketchybar/icons.sh"

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME label="Disconnected" icon="$WIFI_DISCONN_ICON"
else
  sketchybar --set $NAME label="$SSID" icon="$WIFI_CONN_ICON"
fi

