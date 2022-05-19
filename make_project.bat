@echo off
set /p target="Target directory: "
call activate
cookiecutter %~dp0 -o %target%

pause
