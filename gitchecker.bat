rem A script for running checkstatus for each git repo in C:\GitRepositories
set startingdir = %cd%

cd C:/GitRepositories
for /f "delims=" %%g in ('dir /ad /b') do start "%%g" cmd /k ("C:\GitRepositories\Repository Tracking\checkonerepo.bat" "C:\GitRepositories\%%g")

cd %startingdir%

