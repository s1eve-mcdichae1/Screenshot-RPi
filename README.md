## Screenshot-RPi
Universal screenshot with Raspi2PNG: https://github.com/AndrewFromMelbourne/raspi2png

Installation scriptmodule for RetroPie.

Adapted from ZeroJay's RetroPie-Extra: https://github.com/zerojay/RetroPie-Extra

## Installation
Download the scriptmodule with command:

    wget https://raw.githubusercontent.com/s1eve-mcdichae1/Screenshot-RPi/main/screenshot.sh -P $HOME/RetroPie-Setup/scriptmodules/supplementary/

After that you can install the supplementary package through **RetroPie-Setup > Manage packages > Manage experimental packages**

## Usage
    screenshot [destination]

Use over SSH to capture screen images while gaming.

If no destination given, shots are saved to `$HOME/.config/screenshots/YYYYMMDD_HHMMSS.png`.

File share access at `configs/all/screenshots`.
