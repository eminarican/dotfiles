#!/usr/bin/env sh

FRONT_APP_SCRIPT='sketchybar --set $NAME label="$INFO"'

YABAI=(
  script="$PLUGIN_DIR/yabai.sh"
  label.drawing=off
  icon.width=30
  icon=$YABAI_GRID
  icon.color=$ORANGE
  updates=on
  associated_display=active
)

FOCUS=(
  script="$FRONT_APP_SCRIPT"
  icon.drawing=off
  background.padding_left=18
  background.padding_right=10
  associated_display=active
)

sketchybar --add event window_focus
sketchybar --add event windows_on_spaces

sketchybar --set yabai "${YABAI[@]}"
sketchybar --subscribe yabai window_focus windows_on_spaces mouse.clicked

sketchybar --add item focus left
sketchybar --set focus "${FOCUS[@]}"
sketchybar --subscribe focus front_app_switched

