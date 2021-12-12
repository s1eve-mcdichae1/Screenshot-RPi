# Screenshot-RPi
Universal screenshot with RasPi2PNG: https://github.com/AndrewFromMelbourne/raspi2png

Installation scriptmodule for RetroPie.

Adapted from ZeroJay's RetroPie-Extra: https://github.com/zerojay/RetroPie-Extra

# Installation
Download the scriptmodule with command:

    wget https://raw.githubusercontent.com/s1eve-mcdichae1/GMLoader-RPi/main/gmloader.sh -P $HOME/RetroPie-Setup/scriptmodules/ports/

After that you can install the supplementary package through **RetroPie-Setup > Manage packages > Manage experimental packages**

# Usage
    screenshot [destination]

Use over SSH to capture emulated gameplay images.

If no destination given, shots are saved to `$HOME/RetroPie/screenshots/YYYYMMDD_HHMMSS.png`.
