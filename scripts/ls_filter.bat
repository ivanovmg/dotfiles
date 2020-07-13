@REM Runs ls with a filter to exclude some Windows folders, but only when run from the user's home folder.
@if "%CD%" == "%USERPROFILE%" (
    ls --hide="_*" --color^
        -I "AppData"^
        -I "Contacts"^
        -I "Favorites"^
        -I "Links"^
        -I "Music"^
        -I "My Documents"^
        -I "Pictures"^
        -I "Videos"^
        -I "Saved Games"^
        -I "Start Menu"^
        -I "OneDrive*"^
        -I "NTUSER.*"^
        -I "ntuser.*"^
        -I "thumbs.db"^
        -I "Thumbs.db"^
        -I "desktop.ini"^
        -I "Application Data"^
        -I "Cookies"^
        -I "NetHood"^
        -I "PrintHood"^
        -I "Local Settings"^
        -I "Recent"^
        -I "Searches"^
        -I "SendTo"^
        -I "IntelGraphics*"^
        -I "MicrosoftEdge*"^
        -I "3D Objects"^
        -I "Templates" %*
) else (
    ls --color -I "NTUSER.*" -I "ntuser.*" -I "thumbs.db" -I "Thumbs.db" -I "desktop.ini" %*
)
