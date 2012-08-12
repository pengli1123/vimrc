
@echo off

if "%~1"=="" (
    echo "Input vim installer program file. i.e. ""C:\Program Files (x86)\Vim\vim73"" in quotes "
    goto :eof
)

echo %1%

set tst="%windir%\$del_me$"

REM test if running in elevated mode
(type nul>%tst%) 2>nul && (del %tst% & set elev=t) || (set elev=)

if not defined elev ( 
echo "ERROR, This script is required to be run in elevated mode!"
goto :eof
)

echo "copying tagbar files ..."

copy .\submodules\tagbar\autoload\tagbar.vim %1%\autoload\
copy .\submodules\tagbar\plugin\tagbar.vim %1%\plugin\
copy .\submodules\tagbar\syntax\tagbar.vim %1%\syntax\

copy .\submodules\tagbar\doc\tagbar.txt %1%\doc\

copy .\imports\ctags58\ctags.exe %windir%\

copy .\vimrc %1%\
