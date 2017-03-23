@echo off

set source=%APPDATA%\Microsoft\Signatures
set destination=P:\.NyPC\Signatures
xcopy %source% %destination% /E /y /V /I

set source=%USERPROFILE%\Favorites
set destination=P:\.NyPC\Favorites
xcopy %source% %destination% /E /y /V /I
