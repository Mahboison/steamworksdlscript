@echo off
set /P player=Login username (leave blank for anonymous) 
set /P mod=Enter workshop ID 
set /P game=Enter AppID
cd C:\bin\steamcmd\ &::Make sure to change this to your SteamCMD install directory
IF NOT DEFINED player (
	echo "Logging in as user %player%"
	steamcmd.exe +login anonymous +workshop_download_item %game% %mod% +quit
) ELSE (
	echo "Logging in as anonymous"
	steamcmd.exe +login %player% +workshop_download_item %game% %mod% +quit
)
pause
