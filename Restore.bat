@echo off

set source=P:\.NyPC\Signatures
set destination=%APPDATA%\Microsoft\Signatures
xcopy %source% %destination% /E /y /V /I

set source=P:\.NyPC\Favorites
set destination=%USERPROFILE%\Favorites
xcopy %source% %destination% /E /y /V /I

:choice
set /P c=Vil du slette backuppen (y/n)?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice

:somewhere

rd /s /q "P:\.NyPC\"

:somewhere_else

exit