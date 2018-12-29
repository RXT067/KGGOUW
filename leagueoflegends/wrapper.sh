#!/bin/env bash
## Author kreyren @ github.com/kreyren
## License: GNUv2

WINEPREFIX="/opt/games/leagueoflegends/"

LOL_INSTALLER_EXE=

region_selection () {
    while [[ ${REGION} != @(EUNE|NA|EUW|BR|LAN|LAS|OCE|RU|JP|SEA) ]]; do 
    echo "Select your region:
    EUNE  - Europe Nordic and East
    NA    - North America
    EUW   - Europe West
    BR    - Brazil
    AN    - Latin America North
    LAS   - Latin America South
    OCE   - Oceania
    RU    - Russia
    TR    - Turkey
    JP    - Japan
    SEA   - South East Asia
    "

    read REGION

done
}

get_user_var () {
    export USER

    if [[ USER == "" ]]; then
        echo "Pick a username which is going to be used by the script."
        echo "WARNING: case-sensitive!"

        read USER
    fi
}

install_wineapp () {

    if [[ ! -x $(command -v wine) ]]; then
        echo "Wine is not executable." && exit 1
    fi

    if [[ ! -x $(command -v winetricks) ]]; then
        echo "Winetricks is not executable." && exit 1
    fi

    echo Winetricks: $(winetricks --version)

    echo WINE: ${wine --version}

    WINEDEBUG="-all" WINEPREFIX="${WINEPREFIX}" winetricks corefonts adobeair vcrun2008 vcrun2017 winxp glsl=disabled

    echo "
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
!!! DO NOT LAUNCH THE GAME ONCE THE INSTALLER IS FINISHED !!!
"

    echo "Press return to continue.."

    read anything

    # Add idiot-check

    WINEDEBUG="-all" WINEPREFIX="${WINEPREFIX}" wine "${LOL_INSTALLER}"

    chown -R $USER $WINEPREFIX
    ## TODO: Make/grant a user group instead.
}

region_selection

get_user_var

install_wineapp
