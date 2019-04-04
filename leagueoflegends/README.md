# EBUILD: LEAGUE OF LEGENDS
Installing League Of Legends using wine Wrapper on Gentoo's ebuild.

Inspired by https://github.com/Nefelim4ag/osu-wine && https://github.com/Heather/gentoo-cynede/blob/b4c46b1e8985c1beab014ebfc5eb626d33379299/app-misc/osu-wine/osu-wine-9999.ebuild

Workaround to https://github.com/RXT067/KGGO

Last tested: None

## Abstract
Install League Of Legends on Gentoo that works on platinum.

## Expected
- Install Wine with patches from Andrew Wesie AND/OR Wine Staging for league of legends only.
- Install dependencies from `winetricks` - `corefonts adobeair vcrun2008 vcrun2017 winxp glsl=disabled`
- Install League Of Legends using `wine` 
   - Installing extracted installer breaks the licence 
