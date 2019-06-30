@echo off

rem A program track git repositories into a single folder

set startingdir=%cd%

if [%1]==[] goto :paramerror

rem check git repo folder 
if exist C:\GitRepositories (
        echo Using directory C:\GitRepositories
    ) else (
        echo Creating directory C:\GitRepositories
        mkdir C:\GitRepositories
    )
cd C:\GitRepositories
rem check if name parameter
if [%2] == [] goto :clone
goto :init

:clone
rem clones git repo
set repo=%1
echo Starting cloning for repository %repo%. To initialize instead, add folder name as a parameter.
git clone %repo%
cd %startingdir%
goto :eof

:init
rem initializes git repo
set repo=%1
set name=%2
echo Starting initialization for repository %repo% with name %name%. To clone instead, omit name parameter (second parameter) from arguments.
if exist C:\GitRepositories\%name%\ (
        echo Error: Folder %name% already exists in C:\GitRepositories
        goto :eof
    )
    echo Creating directory C:\GitRepositories\%name%
    mkdir C:\GitRepositories\%name%
    cd C:\GitRepositories\%name%
    rem "taken from github.com"
    echo # %name% >> README.md
    git init
    git add README.md
    git commit -m "Repository Initialization"
    git remote add origin %repo%
    git push -u origin master
    echo Repository initialized.
    cd %startingdir%
    
goto:eof
:paramerror
echo Invalid parameters. Please supply link to git repository.
goto :eof
