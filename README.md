## Screenshot-RPi
Universal screenshot with Raspi2PNG:\
https://github.com/AndrewFromMelbourne/raspi2png

Installation scriptmodule for RetroPie:\
https://retropie.org.uk

Adapted from ZeroJay's RetroPie-Extra:\
https://github.com/zerojay/RetroPie-Extra

## Installation
Download the scriptmodule with command:

    wget https://raw.githubusercontent.com/s1eve-mcdichae1/Screenshot-RPi/main/screenshot.sh -P $HOME/RetroPie-Setup/scriptmodules/supplementary/

After that you can install the supplementary package through **RetroPie-Setup > Manage packages > Manage experimental packages**

## Usage
**Now uses capital 'S' for quicker tab-completion.**

Just type `S[tab]` (or if you also have Skyscraper, `Sc[tab]` to complete command instead of `screens[tab]`. Module replaces old command, just update script and reinstall.

Use over SSH to capture screen images while gaming.

    Screenshot [destination]

If no destination given, shots are saved to `$HOME/RetroPie/screenshots/YYYYMMDD_HHMMSS.png`.

`screenshots` folder access over smb.
