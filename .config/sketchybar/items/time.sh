TIME=(
  update_freq=1
  icon.drawing=off
  background.padding_right=0
  script="$PLUGIN_DIR/time.sh"
)

sketchybar --add item time right
sketchybar --set time "${TIME[@]}"

