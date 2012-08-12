
@echo off

mkdir %HOMEPATH%\vimfiles
mkdir %HOMEPATH%\vimfiles\autoload
mkdir %HOMEPATH%\vimfiles\bundle

copy .\submodules\vim-pathogen\autoload\pathogen.vim %HOMEPATH%\vimfiles\autoload\


xcopy /Y /S .\submodules %HOMEPATH%\vimfiles\bundle\

copy .\vimrc %HOMEPATH%\_vimrc

