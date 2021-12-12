#!/usr/bin/env bash

# adapted from ZeroJay's RetroPie-Extra:
# https://github.com/zerojay/RetroPie-Extra

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="screenshot"
rp_module_desc="Universal Screenshot with Raspi2PNG"
rp_module_help="To take a screenshot use $datadir/screenshots/screenshot.sh over SSH.\n\nThis script is incompatible with the OpenGL driver."
rp_module_repo="git https://github.com/AndrewFromMelbourne/raspi2png.git master b3c5599"
rp_module_licence="MIT https://raw.githubusercontent.com/AndrewFromMelbourne/raspi2png/master/LICENSE"
rp_module_section="exp"

function depends_screenshot() {
    getDepends libpng-dev
}

function sources_screenshot() {
    gitPullOrClone
}

function build_screenshot() {
    make clean
    make
    md_ret_require="$md_build/raspi2png"
}

function install_screenshot() {
    md_ret_files=(
        'raspi2png'
        'LICENSE'
        'README.md'
    )
}

function configure_screenshot() {
    mkUserDir "$datadir/screenshots"

    # Create script to take screenshot over ssh
    cat > "$md_inst/$md_id.sh" << _EOF_
#!/bin/bash
dest="\$@"
dest_fileext="\${dest##*.}"
[[ ! -n "\$dest" ]] && dest="$datadir/screenshots/\$(date +%Y%m%d_%H%M%S).png"
[[ "\${dest_fileext,,}" != "png" ]] && dest="\${dest}.png"
$md_inst/raspi2png -p \$dest
_EOF_

    chown $user:$user "$md_inst/$md_id.sh"
    chmod +x "$md_inst/$md_id.sh"
}
