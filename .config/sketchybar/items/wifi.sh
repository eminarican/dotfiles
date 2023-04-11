WIFI=(
  script="$PLUGIN_DIR/wifi.sh"
)

sketchybar --add item wifi right
sketchybar --set wifi "${WIFI[@]}"
sketchybar --subscribe wifi wifi_change

