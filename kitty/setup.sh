#!/usr/bin/env bash
set -eu

CONFIG_DIR=$HOME/.config/kitty

# light or dark icon
ICON=dark

mkdir -p $CONFIG_DIR

if [[ ! -f $CONFIG_DIR/kitty.conf ]]; then
  ln -s $PWD/kitty.conf $CONFIG_DIR/
fi

cp -rf $PWD/kitty-themes $CONFIG_DIR/

# change the kitty icon
cat <<EOT
### Kitty
To change the icon:
1. Find kitty.app in the Applications folder, select it and press ⌘ + i.
2. Drag kitty-dark.icns or kitty-light.icns onto the application icon in the kitty info pane.
3. Delete the icon cache and restart Dock (done by this script)
EOT

rm /var/folders/*/*/*/com.apple.dock.iconcache; killall Dock
